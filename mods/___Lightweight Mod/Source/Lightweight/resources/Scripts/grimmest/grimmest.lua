-- ========================================================================
-- Initialization
-- ========================================================================

-- ------------------------------------------------------------------------
-- Spawn Types
-- ------------------------------------------------------------------------
local DOM_MODE = true
local SPAWNTYPE_NORMAL = 1
local SPAWNTYPE_TOTEM  = 2
local SPAWNTYPE_MINI   = 3
local SPAWNTYPE_BOSS   = 4

-- ------------------------------------------------------------------------
-- Dynamic scaling at max Zeke level
-- ------------------------------------------------------------------------
local SPAWN_STEP         = 20
local spawnCount         = 0
local zekeCount          = 0

local currHeroBoostMin   = 0
local currHeroBoostMax   = 0
local currHeroMultiplier = 0
local currBossNum        = 0
local currBossChance     = 0
local currNemesisNum     = 0
local currNemesisChance  = 0

-- ------------------------------------------------------------------------
-- Misc
-- ------------------------------------------------------------------------
local DEBUG             = false -- Displays more notifications
local grimmestInit      = false -- 1 time use boolean to say okay to OnAddToWorld

local DBR_ZEKE_ITEM     = "records/grimmest/items/misc/potion_grimmest_vendor.dbr"
local DBR_ZEKE_CREATURE = "records/grimmest/creatures/npcs/npc_grimmest.dbr"
local DBR_ZEKE_TRIGGER  = "records/grimmest/creatures/npcs/npc_grimmest_trigger.dbr"
-- hooked to gd.grimmest.OnLeave

local zekeSpawned       = false
local zekeNpc           = nil
local zekeTrig          = nil

-- records/grimmest/creatures/enemies/hero was a copy of the vanilla
-- records/creatures/enemies/hero so there is no point duplicating this
--local tablesExpanded = false

gd.grimmest             = {}
gd.grimmest.heroes      = {}
-- records/grimmest/creatures/enemies/hero was a copy of the vanilla
-- records/creatures/enemies/hero so there is no point duplicating this
--gd.grimmest.heroes2 = {}
gd.grimmest.bosses      = {}
gd.grimmest.nemesis     = {}

gd.grimmest.tag         = {}
gd.grimmest.tokMob      = {}
gd.grimmest.tokHero     = {}

gd.grimmest.tag         = { "tagGrimmestNotifyIsOff", "tagGrimmestNotifyIsLow", "tagGrimmestNotifyIsMod", "tagGrimmestNotifyIsML1", "tagGrimmestNotifyIsML2", "tagGrimmestNotifyIsML3", "tagGrimmestNotifyIsM11", "tagGrimmestNotifyUndef" }
--gd.grimmest.factions  = { "aetherial", "aetherialvanguard", "beast", "chthonian", "eldritch", "outlaw", "undead" }
gd.grimmest.tokHero     = { "GRIMMEST_OFF", "GRIMMEST_LOW", "GRIMMEST_MOD", "GRIMMEST_ML1", "GRIMMEST_ML2", "GRIMMEST_ML3", "GRIMMEST_M11" }
gd.grimmest.tokMob      = { "DENSITY_SINGLE", "DENSITY_DOUBLE", "DENSITY_3", "DENSITY_4", "DENSITY_5", "DENSITY_6" }

-- ------------------------------------------------------------------------
-- Zeke Difficulties
-- ------------------------------------------------------------------------
local GRIMMEST_UNDEF = -1
local GRIMMEST_OFF   = 1
local GRIMMEST_MAX   = table.getn( gd.grimmest.tokHero )

local MOBMULT_UNDEF  = -1
local MOBMULT_OFF    = 1
local MOBMULT_MAX    = table.getn( gd.grimmest.tokMob )

gd.grimmest.heroDefault = GRIMMEST_OFF
gd.grimmest.heroIndex   = gd.grimmest.heroDefault
gd.grimmest.mobDefault  = MOBMULT_OFF
gd.grimmest.mobIndex    = gd.grimmest.mobDefault

-- ------------------------------------------------------------------------
-- Spawn related tables
-- ------------------------------------------------------------------------
gd.grimmest.mobMultiplier      = { 0,   1,      2,      4,      6,      9 } -- Multiplier for additional mob spawns (0 means just standard number of spawns, 1 means doubel the spawns)

-- Used in gd.grimmest.heroSpawn
-- Spawn Count = Ceil(minBoost + maxMultiplier * (spawn number parameter + randtab[random(100)]) / 2)
--gd.grimmest.randtab = { 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }

-- I prefer:
-- Spawn Count = Ceil(random(minBoos, maxBoost) + maxMultiplier * spawn number parameter)
-- otherwise the randtab has too much influence, going from 1 to 7 when the parameter goes from 1 to 9
-- (on top of the sum being divided by two, so further reducing the parameter's impact on the actual
--  number of spawns)

--  A = Alcoholic
--  N = Nihilistic
--  M = Misanthropic
--  P = Psychotic
--  S = Satanic
-- 11 = Level 11
--                                OFF   A       N       M       P       S      11
gd.grimmest.grimMinBoost       = { 0,  -1,      0,      1,      1,      2,      3    } -- adjusts number of hero spawns
gd.grimmest.grimMaxBoost       = { 0,   0,      1,      2,      4,      5,      9    } -- adjusts number of hero spawns
gd.grimmest.grimMultiplier     = { 0,   0.15,   0.25,   0.35,   0.5,    0.5,    1.0  } -- multiplier for hero spawns from proxies
gd.grimmest.domMinBoost        = { 0,  -2,      0,      1,      2,      3,      3    } -- adjusts number of hero spawns
gd.grimmest.domMaxBoost        = { 0,   1,      1,      3,      4,      5,      5    } -- adjusts number of hero spawns
gd.grimmest.domMultiplier      = { 0,   0.15,   0.25,   0.35,   0.45,   0.6,    0.6  } -- multiplier for hero spawns from proxies
gd.grimmest.bossNum            = { 0,   0,      1,      1,      2,      3,      3    } -- number of bosses that can spawn, each with its individual chance
gd.grimmest.bossChance         = { 0,   0,     10,     25,     20,     20,     20    } -- chance for a boss to spawn
gd.grimmest.nemesisNum         = { 0,   0,      0,      0,      0,      1,      1    } -- number of nemesis that can spawn, each with its individual chance
gd.grimmest.nemesisChance      = { 0,   0,      0,      0,      0,      3,     10    } -- chance for a nemesis to spawn
-- Totem related spawns
gd.grimmest.bossNumTotem       = { 0,   2,      2,      3,      3,      4,      4    } -- number of bosses that can spawn, each with its individual chance
gd.grimmest.bossChanceTotem    = { 0,  40,     60,     40,     60,     40,     60    } -- chance for a boss to spawn
gd.grimmest.nemesisNumTotem    = { 0,   0,      0,      0,      1,      1,      1    } -- number of nemesis that can spawn, each with its individual chance
gd.grimmest.nemesisChanceTotem = { 0,   0,      0,      0,     10,     30,     50    } -- chance for a nemesis to spawn from a totem
-- Mini-Boss related spawns
gd.grimmest.domMinBoostMini    = { 0,   0,      0,      0,      1,      3,      5    } -- adjusts number of hero spawns
gd.grimmest.domMaxBoostMini    = { 0,   0,      0,      0,      2,      4,      7    } -- adjusts number of hero spawns
gd.grimmest.domMultiplierMini  = { 0,   0,      0,      0,      0.3,    0.5,    0.7  } -- multiplier for hero spawns from proxies
gd.grimmest.bossNumMini        = { 0,   0,      0,      0,      0,      2,      3    } -- number of bosses that can spawn, each with its individual chance
gd.grimmest.bossChanceMini     = { 0,   0,      0,      0,      0,     60,     70    } -- chance for a boss to spawn
gd.grimmest.nemesisNumMini     = { 0,   0,      0,      0,      0,      0,      1    } -- number of nemesis that can spawn, each with its individual chance
gd.grimmest.nemesisChanceMini  = { 0,   0,      0,      0,      0,      0,     10    } -- chance for a nemesis to spawn
-- Boss related spawns
gd.grimmest.domMinBoostBoss    = { 0,   0,      0,      1,      1,      3,      5    } -- adjusts number of hero spawns
gd.grimmest.domMaxBoostBoss    = { 0,   0,      0,      3,      3,      6,     10    } -- adjusts number of hero spawns
gd.grimmest.domMultiplierBoss  = { 0,   0,      0,      0.25,   0.5,    0.75,   1.0  } -- multiplier for hero spawns from proxies
gd.grimmest.bossNumBoss        = { 0,   0,      0,      0,      2,      4,      5    } -- number of bosses that can spawn, each with its individual chance
gd.grimmest.bossChanceBoss     = { 0,   0,      0,      0,     70,     60,     70    } -- chance for a boss to spawn
gd.grimmest.nemesisNumBoss     = { 0,   0,      0,      0,      0,      1,      1    } -- number of nemesis that can spawn, each with its individual chance
gd.grimmest.nemesisChanceBoss  = { 0,   0,      0,      0,      0,      5,     30    } -- chance for a nemesis to spawn

-- Increasing spawns of highest difficulty
--                                 1      2      3      4      5      6      7      8      9     10     11     12     13     14     15     16     17     18     19     20     21     22     23     24     25     26     27     28     29     30     31     32     33     34     35     36     37     38     39     40     41     42     43     44     45     46     47     48     49     50
gd.grimmest.zekeDomMinBoost   = {  3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     4,     4,     4,     4,     4,     4,     4,     4,     4,     4,     4,     4,     4,     4,     4,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     6,     6,     6,     6,     6    }
gd.grimmest.zekeDomMaxBoost   = {  5,     5,     5,     5,     5,     5,     5,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,     8,     8,     8,     8,     8,     8,     8,     8,     8,     8,     8,     8    }
gd.grimmest.zekeDomMultiplier = {  0.65,  0.65,  0.65,  0.65,  0.70,  0.70,  0.70,  0.70,  0.75,  0.75,  0.75,  0.75,  0.80,  0.80,  0.80,  0.80,  0.85,  0.85,  0.85,  0.85,  0.90,  0.90,  0.90,  0.90,  0.95,  0.95,  0.95,  0.95,  1.00,  1.00,  1.00,  1.00,  1.05,  1.05,  1.05,  1.05,  1.10,  1.10,  1.10,  1.10,  1.15,  1.15,  1.15,  1.15,  1.20,  1.20,  1.20,  1.20,  1.25,  1.25 }
gd.grimmest.zekeBossNum       = {  3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,     4,     4,     4,     4,     4,     4,     4,     4,     4,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     5,     6,     6,     6,     6,     6,     6    }
gd.grimmest.zekeBossChance    = { 20,    20,    30,    30,    30,    40,    40,    40,    50,    50,    50,    60,    60,    60,    70,    70,    70,    80,    80,    80,    90,    90,    90,    75,    75,    75,    85,    85,    85,    90,    90,    90,    80,    80,    80,    85,    85,    85,    90,    90,    90,    95,    95,    95,    85,    85,    85,    90,    90,    90    }
gd.grimmest.zekeNemesisNum    = {  1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     1,     2,     2,     2,     2,     2,     2,     2,     2,     2,     2,     2,     2,     2,     2,     2    }
gd.grimmest.zekeNemesisChance = { 10,    15,    15,    20,    20,    25,    25,    30,    30,    35,    35,    40,    40,    45,    45,    50,    50,    55,    55,    60,    60,    65,    65,    70,    70,    75,    75,    80,    80,    85,    85,    90,    90,    95,    95,    50,    50,    55,    55,    60,    60,    65,    65,    70,    70,    75,    75,    80,    80,    85    }

-- ------------------------------------------------------------------------
-- Load spawn tables
-- ------------------------------------------------------------------------
Script.Load( "scripts/grimmest/grimmest_tables.lua" )

---show message to make sure arrays loaded
-- LEAVE AT LEAST THIS ONE FOR DEBUGGING THAT THE SCRIPT WAS ACTUALLY READ
UI.Notify( "tagGrimmestNotifyIntro" )

-- ------------------------------------------------------------------------
-- expandTables() basically doubles the hero pool, someday all the dups will be modified
-- ------------------------------------------------------------------------
-- commented out because the heroes were identical (or would have been if
-- the Grimmest ones had been maintained when the GD ones changed)
function gd.grimmest.expandTables()
-- records/grimmest/creatures/enemies/hero was a copy of the vanilla
-- records/creatures/enemies/hero so there is no point duplicating this

--	if ( not Server ) then return end
--	
--	if ( tablesExpanded ) then return end
--
--	tablesExpanded = true
--
--	for fi, fac in ipairs( gd.grimmest.factions ) do
--		for hi, dbr in ipairs( gd.grimmest.heroes2[ fac ] ) do
--			table.insert( gd.grimmest.heroes[ fac ], dbr )
--		end
--	end
end

-- ========================================================================
-- General functions
-- ========================================================================
function gd.grimmest.notify()
	local tag = gd.grimmest.tag[ gd.grimmest.heroIndex ]
	
	if ( tag ~= nil ) then
		if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
			tag = string.format( "%s_%01d", tag, gd.grimmest.mobIndex - 1 )
		end
	
		if ( DEBUG == true ) then
			UI.Notify( string.format( "Tag : %s", tag ) )
		end

		UI.Notify( tag )
		
		if ( DEBUG == true ) then
			UI.Notify( string.format( "boss # : %d, boss %% : %3.2f, nemesis %% : %3.2f, density: %d", 
			  gd.grimmest.bossNum[gd.grimmest.heroIndex], gd.grimmest.bossChance[gd.grimmest.heroIndex],
			  gd.grimmest.nemesisChance[gd.grimmest.heroIndex], gd.grimmest.mobMultiplier[gd.grimmest.mobIndex] + 1 ) )
		end
	else
		UI.Notify( "tagGrimmestNotifyError" )
	end
end

function gd.grimmest.removePN( player )
	while player:HasItem( DBR_ZEKE_ITEM, 1, false ) do
		player:TakeItem( DBR_ZEKE_ITEM, 1, false )
	end
end

function gd.grimmest.ensureOnePN( player )
	-- gd.grimmest.removePN( player )

	if ( not player:HasItem( DBR_ZEKE_ITEM, 1, false ) ) then
		player:GiveItem( DBR_ZEKE_ITEM, 1, false ) --make sure the player can't lose the vendor summon
	end
end

function gd.grimmest.removeAllTokens()
	-- { "GRIMMEST_OFF", "GRIMMEST_LOW", "GRIMMEST_MOD", "GRIMMEST_ML1", "GRIMMEST_ML2", "GRIMMEST_ML3", "GRIMMEST_M11" }
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 1 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 2 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 3 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 4 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 5 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 6 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokHero [ 7 ] )
	
	-- { "DENSITY_SINGLE", "DENSITY_DOUBLE", "DENSITY_3", "DENSITY_5", "DENSITY_7", "DENSITY_10" }
	RemoveTokenFromLocalPlayer( gd.grimmest.tokMob[ 1 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokMob[ 2 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokMob[ 3 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokMob[ 4 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokMob[ 5 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokMob[ 6 ] )
end

function gd.grimmest.removeCurrentToken()
	local token = gd.grimmest.tokHero[ gd.grimmest.heroIndex ]
	
	if ( token ~= nil ) then
		RemoveTokenFromLocalPlayer( token )
	end
	
	token = gd.grimmest.tokMob[ gd.grimmest.mobIndex ]
	
	if ( token ~= nil ) then
		RemoveTokenFromLocalPlayer( token )
	end
end

function gd.grimmest.giveCurrentToken()
	local token = gd.grimmest.tokHero[ gd.grimmest.heroIndex ]
	
	if ( token ~= nil ) then
		if ( DEBUG == true ) then
			UI.Notify(token)
		end
		
		GiveTokenToLocalPlayer( token )
	end
	
	token = gd.grimmest.tokMob[ gd.grimmest.mobIndex ]
	
	if ( token ~= nil ) then
		if ( DEBUG == true ) then
			UI.Notify(token)
		end

		GiveTokenToLocalPlayer( token )
	end
end

-- ========================================================================
-- Nemesis Lootchest Spawn function
-- ========================================================================
function gd.grimmest.spawnNemesisChest( objectId )
	-- Alternatively, add records/grimmest/nemesis/skills/spawn_nemesis_orb.dbr to nemesis skill list
	if ( not Server ) then return end

	local object = Entity.Get( objectId )
	if ( object == nil ) then return end
	if ( object:IsReloaded() ) then return end -- chest already placed
	
	local coords = object:GetCoords()
	if ( coords == nil ) then return end

	local proxy = Proxy.Create( "records/grimmest/nemesis/lootchests/chestproxies/chestproxy_nemesis.dbr", coords.origin )
	if ( proxy ~= nil ) then
		proxy:SetCoords( coords )
	end
end

-- ========================================================================
--	Zeke related functions
-- ========================================================================
function gd.grimmest.destroyZeke()
	if ( not Server ) then return end

	if ( zekeNpc ~= nil ) then
		zekeNpc:Destroy()
		zekeNpc = nil
	end
		
	if ( zekeTrig ~= nil ) then
		zekeTrig:Destroy()
		zekeTrig = nil
	end
end

function gd.grimmest.createZeke( coords )
	if ( not Server ) then return end

	if ( zekeNpc == nil ) then
		zekeNpc = Entity.Create( DBR_ZEKE_CREATURE )

		gd.grimmest.notify()
	end
	
	if ( zekeTrig == nil ) then
		zekeTrig = Entity.Create( DBR_ZEKE_TRIGGER )
	end

	zekeNpc:NetworkEnable()
	zekeTrig:NetworkEnable()
	zekeNpc:SetCoords( coords )
	zekeTrig:SetCoords( coords )
end

function gd.grimmest.OnDestroy_Controller( objectID )
	if ( not Server ) then return end

	local player = Game.GetLocalPlayer()
	if ( player == nil ) then return end
	
	local playerCoords = player:GetCoords()
	gd.grimmest.createZeke( playerCoords )
	--gd.grimmest.notify()
end
	
function gd.grimmest.OnDrop_Controller( objectID )
	if ( not Server ) then return end

	local object = Entity.Get( objectId )
	if ( object == nil ) then return end

	object:Destroy()
end	

function gd.grimmest.OnLeave( objectID )
	--if the player leaves the bounding box, the bounding box + vendor are destroyed
	if ( not Server ) then return end

	gd.grimmest.destroyZeke()
end

-- ------------------------------------------------------------------------
-- Zeke conversation related functions to affect the difficulty
-- ------------------------------------------------------------------------
function gd.grimmest.setIndex( heroIndex, mobIndex )
	gd.grimmest.removeCurrentToken()
	
	if ( heroIndex < GRIMMEST_OFF ) then
		gd.grimmest.heroIndex = GRIMMEST_OFF
		--UI.Notify( "tagGrimmestNotifyHeroIsOnMin" )
	elseif ( heroIndex > GRIMMEST_MAX ) then
		gd.grimmest.heroIndex = GRIMMEST_MAX
		--UI.Notify( "tagGrimmestNotifyHeroIsOnMax" )
	else
		gd.grimmest.heroIndex = heroIndex
	end
	
	if ( mobIndex < MOBMULT_OFF ) then
		gd.grimmest.mobIndex = MOBMULT_OFF
		--UI.Notify( "tagGrimmestNotifyMobIsOnMin" )
	elseif ( mobIndex > MOBMULT_MAX ) then
		gd.grimmest.mobIndex = MOBMULT_MAX
		--UI.Notify( "tagGrimmestNotifyMobIsOnMax" )
	else
		gd.grimmest.mobIndex = mobIndex
	end
	
	gd.grimmest.giveCurrentToken()
end

function gd.grimmest.heroRateUp()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.heroIndex + 1, gd.grimmest.mobIndex )
	gd.grimmest.notify()
end

function gd.grimmest.heroRateDown()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.heroIndex - 1, gd.grimmest.mobIndex )
	gd.grimmest.notify()
end

function gd.grimmest.heroRateReset()
	if ( not Server ) then return end

	gd.grimmest.setIndex( GRIMMEST_OFF, gd.grimmest.mobIndex )
	gd.grimmest.notify()
end

function gd.grimmest.densityUp()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.heroIndex, gd.grimmest.mobIndex + 1 )
	gd.grimmest.notify()
end

function gd.grimmest.densityDown()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.heroIndex, gd.grimmest.mobIndex - 1 )
	gd.grimmest.notify()
end

function gd.grimmest.densityReset()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.heroIndex, MOBMULT_OFF )
	gd.grimmest.notify()
end

-- ========================================================================
-- Player OnAddToWorld function
-- ========================================================================
function gd.grimmest.initMaxZeke()
	if ( DEBUG == true ) then
		UI.Notify( "tagGrimmestDEBUGInit" )
	end
	
	zekeCount          = 0
	currHeroBoostMin   = gd.grimmest.domMinBoost[ gd.grimmest.heroIndex ]
	currHeroBoostMax   = gd.grimmest.domMaxBoost[ gd.grimmest.heroIndex ]
	currHeroMultiplier = gd.grimmest.domMultiplier[ gd.grimmest.heroIndex ]
	currBossNum        = gd.grimmest.bossNum[ gd.grimmest.heroIndex ]
	currBossChance     = gd.grimmest.bossChance[ gd.grimmest.heroIndex ]
	currNemesisNum     = gd.grimmest.nemesisNum[ gd.grimmest.heroIndex ]
	currNemesisChance  = gd.grimmest.nemesisChance[ gd.grimmest.heroIndex ]
end

function gd.grimmest.OnAddToWorld_pc( objectId )

	-- Lightweight Mod Stuff
	
	gd.loot.disableItems()

	if Game.GetLocalPlayer():HasToken("PLAYING_ALTERNATIVE_VERSION") then
		Game.GetLocalPlayer():RemoveToken("PLAYING_ALTERNATIVE_VERSION")
	end

	gd.loot.countSpheres()
	
	UI.Notify("tag_ReceivedSummonItem")

	-- Lightweight Mod Stuff Ends
	
	local player = Player.Get( objectId )					

	if ( player == nil ) then return end
	
	if ( not player:HasToken( "DC_PRISON_GUARD" ) ) then
		GiveTokenToLocalPlayer( "DC_PRISON_GUARD" )
		player:GiveItem( "records/items/misc/inventorybag.dbr", 5, false )
		--UI.Notify( "tagGrimmestOpenedDC" )
	end

	if ( not player:HasToken( "DISMANTLING_UNLOCKED" ) ) then
		GiveTokenToLocalPlayer( "DISMANTLING_UNLOCKED" )
	end

	if ( not player:HasToken( "CONVERTING_UNLOCKED" ) ) then
		GiveTokenToLocalPlayer( "CONVERTING_UNLOCKED" )
	end
		
	if ( not Server ) then 
		gd.grimmest.removePN( player )

		return
	end

	math.randomseed( Time.Now() )
		
	if ( grimmestInit ) then return	end
	
	grimmestInit = true

	gd.grimmest.ensureOnePN( player )
				
	-- Get Hero token
	local index = GRIMMEST_UNDEF
	for i = 1, table.getn( gd.grimmest.tokHero ) do
		if ( player:HasToken( gd.grimmest.tokHero[ i ] ) ) then
			index = i
			break
		end
	end
				
	if ( index == GRIMMEST_UNDEF ) then
		gd.grimmest.heroIndex = GRIMMEST_OFF
	else
		gd.grimmest.heroIndex = index
	end
				
	-- Get Mob Density token
	index = MOBMULT_UNDEF
	for i = 1, table.getn( gd.grimmest.tokMob ) do
		if ( player:HasToken( gd.grimmest.tokMob[ i ] ) ) then
			index = i
			break
		end
	end
				
	if ( index == MOBMULT_UNDEF ) then
		gd.grimmest.mobIndex = MOBMULT_OFF
	else
		gd.grimmest.mobIndex = index
	end
				
	gd.grimmest.initMaxZeke()

-- records/grimmest/creatures/enemies/hero was a copy of the vanilla
-- records/creatures/enemies/hero so there is no point duplicating this
--	gd.grimmest.expandTables()
	gd.grimmest.notify()
end

-- ========================================================================
-- Main Spawn functions
-- ========================================================================
function gd.grimmest.densityMult( objectId )
	if ( not Server ) then return end

	local object = Entity.Get( objectId )
	if ( object == nil ) then return end
	
	if ( object:IsReloaded() ) then return end
	
	local coords = object:GetCoords()
	if ( coords == nil ) then return end
	
	-- To spawn more monsters, create a second proxy from records/grimmest/proxies
	-- Proxies in records/grimmest/proxies do not have the onAddToWorld,gd.grimmest.OnAddToWorld_proxy*
	-- so they do not spawn extra heroes, only extra regular monsters
	local str_proxy = string.gsub( object:GetName(), "records/", "records/grimmest/" )
	
	for i = 1, gd.grimmest.mobMultiplier[gd.grimmest.mobIndex] do
		local proxy = Proxy.Create( str_proxy , coords.origin )

		if ( proxy ~= nil ) then
			proxy:SetCoords(coords)
		end
	end
end

-- count comes in from 1 to 9
function gd.grimmest.heroSpawn( objectId, faction, count, spawntype )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex == GRIMMEST_OFF ) then return end
	
	local object = Entity.Get( objectId )
	if ( object == nil ) then return end

	if ( object:IsReloaded() ) then return end
		
	local coords = object:GetCoords()
	if ( coords == nil ) then return end
	
	local avgPlayerLvl = Game.GetAveragePlayerLevel()
	local gameDiff     = Game.GetGameDifficulty()
	local bossIndex    = 0
	local lvlOffset    = 0
	if (gameDiff == Game.Difficulty.Normal) then
		bossIndex = 1
		lvlOffset = 1 + (avgPlayerLvl / 50)
	elseif (gameDiff == Game.Difficulty.Epic) then
		bossIndex = 2
		lvlOffset = 2 + (avgPlayerLvl / 50)
	else
		bossIndex = 3
		lvlOffset = 3 + (avgPlayerLvl / 50)
	end
	
	--Ceil(random(minBoost, maxBoost) + multiplier * spawn number parameter)			
	local minb      = 0
	local maxb      = 0
	local mult      = 0
	local boost     = 0
	--local rng     = gd.grimmest.randtab[ random( 1, 100 ) ]
	local heroCount = 0
	
	if ( DOM_MODE == true ) then
		if spawntype == SPAWNTYPE_NORMAL or spawntype == SPAWNTYPE_TOTEM then
			if ( gd.grimmest.heroIndex == GRIMMEST_MAX ) then
				minb  = currHeroBoostMin
				maxb  = currHeroBoostMax
				mult  = currHeroMultiplier
			else
				minb  = gd.grimmest.domMinBoost[ gd.grimmest.heroIndex ]
				maxb  = gd.grimmest.domMaxBoost[ gd.grimmest.heroIndex ]
				mult  = gd.grimmest.domMultiplier[ gd.grimmest.heroIndex ]
			end
		end
		if spawntype == SPAWNTYPE_MINI then
			minb  = gd.grimmest.domMinBoostMini[ gd.grimmest.heroIndex ]
			maxb  = gd.grimmest.domMaxBoostMini[ gd.grimmest.heroIndex ]
			mult  = gd.grimmest.domMultiplierMini[ gd.grimmest.heroIndex ]
		end
		if spawntype == SPAWNTYPE_BOSS then
			minb  = gd.grimmest.domMinBoostBoss[ gd.grimmest.heroIndex ]
			maxb  = gd.grimmest.domMaxBoostBoss[ gd.grimmest.heroIndex ]
			mult  = gd.grimmest.domMultiplierBoss[ gd.grimmest.heroIndex ]
		end
	else
		minb  = gd.grimmest.grimMinBoost[ gd.grimmest.heroIndex ]
		maxb  = gd.grimmest.grimMaxBoost[ gd.grimmest.heroIndex ]
		mult  = gd.grimmest.grimMultiplier[ gd.grimmest.heroIndex ]
	end

	if ( minb == maxb ) then
	  boost = maxb
	else
	  boost = random( minb, maxb )
	end
	
	heroCount = math.ceil( boost + ( count * mult ) - 0.5 )

	--if ( DEBUG == true ) then
	--	UI.Notify( string.format( "[rand(%d, %d) =] %d + (%d * %3.2f) = %d", minb, maxb, boost, count, mult, heroCount ) )
	--end

	if ( heroCount > 0 ) then
		for i = 1, heroCount do
			local spawn = Character.Create( gd.grimmest.heroes[ faction ][ random( 1, table.getn( gd.grimmest.heroes[ faction ] ) ) ], avgPlayerLvl + lvlOffset, nil )
			if ( spawn ~= nil ) then
				spawn:SetCoords(coords)
			end
		end
	end
	
	if ( DOM_MODE == false ) then return end
	
	local bossNum    = 0
	local bossChance = 0
	if spawntype == SPAWNTYPE_NORMAL then
		if ( gd.grimmest.heroIndex == GRIMMEST_MAX ) then
			bossNum    = currBossNum
			bossChance = currBossChance * 100 -- allow for two decimals
		else
			bossNum    = gd.grimmest.bossNum[ gd.grimmest.heroIndex ]
			bossChance = gd.grimmest.bossChance[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
		end
	end
	if spawntype == SPAWNTYPE_TOTEM then
		bossNum    = gd.grimmest.bossNumTotem[ gd.grimmest.heroIndex ]
		bossChance = gd.grimmest.bossChanceTotem[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
	end
	if spawntype == SPAWNTYPE_MINI then
		bossNum    = gd.grimmest.bossNumMini[ gd.grimmest.heroIndex ]
		bossChance = gd.grimmest.bossChanceMini[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
	end
	if spawntype == SPAWNTYPE_BOSS then
		bossNum    = gd.grimmest.bossNumBoss[ gd.grimmest.heroIndex ]
		bossChance = gd.grimmest.bossChanceBoss[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
	end

	if bossNum > 0 then
		if ( DEBUG == true ) then
			UI.Notify( string.format( "Boss: %d * %d %%", bossNum, bossChance ) )
		end
		for i = 1, bossNum do
			local rng = random( 1, 10000 )
			if rng <= bossChance then
				local boss_id = gd.grimmest.bosses[ faction ][ random( 1, table.getn( gd.grimmest.bosses[ faction ] ) ) ]
				if ( DEBUG == true ) then
					UI.Notify( boss_id )
				end
				
				if ( boss_id ~= nil ) then
					-- Some bosses have different variants for the different difficulties
					-- Find the one matching the game difficulty
					if (bossIndex > 1) then
						for i,v in ipairs(gd.grimmest.bosslookup) do
							if ( v[1] == boss_id ) then
								boss_id = v[bossIndex]
								if ( DEBUG == true ) then
									UI.Notify( "tagGrimmestDEBUGBossExchange" )
								end
								
								break
							end
						end
					end
				
					local spawn = Character.Create( boss_id, avgPlayerLvl + lvlOffset + 2, nil )
					if ( spawn ~= nil ) then
						spawn:SetCoords(coords)

						if ( DEBUG == true ) then
							UI.Notify( "tagGrimmestDEBUGBossSpawn" )
						end
					end
				end
			end
		end
	end
	
	local nemesisNum    = 0
	local nemesisChance = 0
	if spawntype == SPAWNTYPE_NORMAL then
		if ( gd.grimmest.heroIndex == GRIMMEST_MAX ) then
			nemesisNum    = currNemesisNum
			nemesisChance = currNemesisChance * 100 -- allow for two decimals
		else
			nemesisNum    = gd.grimmest.nemesisNum[ gd.grimmest.heroIndex ]
			nemesisChance = gd.grimmest.nemesisChance[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
		end
	end
	if spawntype == SPAWNTYPE_TOTEM then
		nemesisNum    = gd.grimmest.nemesisNumTotem[ gd.grimmest.heroIndex ]
		nemesisChance = gd.grimmest.nemesisChanceTotem[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
	end
	if spawntype == SPAWNTYPE_MINI then
		nemesisNum    = gd.grimmest.nemesisNumMini[ gd.grimmest.heroIndex ]
		nemesisChance = gd.grimmest.nemesisChanceMini[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
	end
	if spawntype == SPAWNTYPE_BOSS then
		nemesisNum    = gd.grimmest.nemesisNumBoss[ gd.grimmest.heroIndex ]
		nemesisChance = gd.grimmest.nemesisChanceBoss[ gd.grimmest.heroIndex ] * 100 -- allow for two decimals
	end

	if nemesisNum > 0 then
		if ( DEBUG == true ) then
			UI.Notify( string.format( "PlayerLevel: %d, Nemesis: %d * %d %%", avgPlayerLvl, nemesisNum, nemesisChance ) )
		end

		for i = 1, nemesisNum do
			local rng = random( 1, 10000 )
			if rng <= nemesisChance then
				local spawn = nil
				if avgPlayerLvl <= 50 then
					spawn = Character.Create( gd.grimmest.bosses[ faction ][ random( 1, table.getn( gd.grimmest.bosses[ faction ] ) ) ], avgPlayerLvl + lvlOffset + 2, nil )
				else
					spawn = Character.Create( gd.grimmest.nemesis[ faction ][ random( 1, table.getn( gd.grimmest.nemesis[ faction ] ) ) ], avgPlayerLvl + lvlOffset + 2, nil )
				end

				if ( spawn ~= nil ) then
					spawn:SetCoords(coords)

					if ( DEBUG == true ) then
						UI.Notify( "tagGrimmestDEBUGNemesisSpawn" )
					end
				end
			end
		end
	end

	if ( gd.grimmest.heroIndex == GRIMMEST_MAX ) then
		spawnCount = spawnCount + 1
		
		if (spawnCount >= SPAWN_STEP) then
			if ( DEBUG == true ) then
				UI.Notify( "tagGrimmestDEBUGIncrease" )
			end

			spawnCount = 0
			zekeCount  = zekeCount + 1

			if ( DEBUG == true ) then
				UI.Notify( string.format( "zekeCount: %d", zekeCount ) )
			end
			
			if ( zekeCount <= table.getn( gd.grimmest.zekeDomMinBoost ) ) then
				currHeroBoostMin   = gd.grimmest.zekeDomMinBoost[ zekeCount ]
				currHeroBoostMax   = gd.grimmest.zekeDomMaxBoost[ zekeCount ]
				currHeroMultiplier = gd.grimmest.zekeDomMultiplier[ zekeCount ]
				currBossNum        = gd.grimmest.zekeBossNum[ zekeCount ]
				currBossChance     = gd.grimmest.zekeBossChance[ zekeCount ]
				currNemesisNum     = gd.grimmest.zekeNemesisNum[ zekeCount ]
				currNemesisChance  = gd.grimmest.zekeNemesisChance[ zekeCount ]
			end
		end
	end
end

-- ========================================================================
-- Faction Spawn functions
-- ========================================================================
function gd.grimmest.OnAddToWorld_proxy( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end
end

-- ------------------------------------------------------------------------
-- Aetherials
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_aetherial_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_13( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 13, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_16( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 16, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_totem_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 4, SPAWNTYPE_TOTEM )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherial", 5, SPAWNTYPE_BOSS )
	end
end

-- ------------------------------------------------------------------------
-- Aetherial Vanguard
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 5, SPAWNTYPE_BOSS )
	end
end

-- ------------------------------------------------------------------------
-- Beasts
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_beast_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_10( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 10, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_13( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 13, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_totem_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 4, SPAWNTYPE_TOTEM )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "beast", 5, SPAWNTYPE_BOSS )
	end
end

-- ------------------------------------------------------------------------
-- Chthonians
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_chthonian_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_totem_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 4, SPAWNTYPE_TOTEM )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "chthonian", 5, SPAWNTYPE_BOSS )
	end
end

-- ------------------------------------------------------------------------
-- Eldritch
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_eldritch_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 8, SPAWNTYPE_NORMAL)
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_totem_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 4, SPAWNTYPE_TOTEM )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "eldritch", 5, SPAWNTYPE_BOSS )
	end
end

-- ------------------------------------------------------------------------
-- Outlaws
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_outlaw_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "outlaw", 5, SPAWNTYPE_BOSS )
	end
end

-- ------------------------------------------------------------------------
-- Undead
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_undead_1( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_2( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 2, SPAWNTYPE_NORMAL)
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_3( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_5( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_6( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_7( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_8( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_9( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_13( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 13, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_totem_4( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.mobIndex > MOBMULT_OFF ) then
		gd.grimmest.densityMult( objectId )
	end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 4, SPAWNTYPE_TOTEM )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_mini( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 4, SPAWNTYPE_MINI )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_boss( objectId )
	if ( not Server ) then return end

	if ( gd.grimmest.heroIndex > GRIMMEST_OFF ) then
		gd.grimmest.heroSpawn( objectId, "undead", 5, SPAWNTYPE_BOSS )
	end
end

--F
