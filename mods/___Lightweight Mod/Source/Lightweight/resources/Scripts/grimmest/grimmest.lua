-- ========================================================================
-- Initialization
-- ========================================================================

-- ------------------------------------------------------------------------
-- Zeke Difficulties
-- ------------------------------------------------------------------------
local GRIMMEST_OFF   = 1
local GRIMMEST_LOW   = 2 -- 1 in 50
local GRIMMEST_MOD   = 3 -- 1 in 20
local GRIMMEST_ML1   = 4 -- 1 in 10
local GRIMMEST_ML2   = 5 -- 1 in 5
local GRIMMEST_ML3   = 6 -- 1 in 2
local GRIMMEST_M11   = 7 -- 1 in 2
local GRIMMEST_MAX   = GRIMMEST_M11
local GRIMMEST_UNDEF = 8 -- 1 in 2

-- ------------------------------------------------------------------------
-- Spawn Types
-- ------------------------------------------------------------------------
local DOM_MODE = false
local SPAWNTYPE_NORMAL = 1
local SPAWNTYPE_TOTEM  = 2

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
local DEBUG          = false -- Displays more notifications
local grimmestInit   = false -- 1 time use boolean to say okay to OnAddToWorld

local PN_DBR         = "records/grimmest/items/misc/potion_grimmest_vendor.dbr"
local ZEKE_NPC_DBR   = "records/grimmest/creatures/npcs/npc_grimmest.dbr"
local ZEKE_TRIG_DBR  = "records/grimmest/creatures/npcs/npc_grimmest_trigger.dbr"
-- hooked to gd.grimmest.OnLeave

local zekeSpawned    = false
local zekeNpc        = nil
local zekeTrig       = nil

-- records/grimmest/creatures/enemies/hero was a copy of the vanilla
-- records/creatures/enemies/hero so there is no point duplicating this
--local tablesExpanded = false

gd.grimmest = {}
gd.grimmest.heroes  = {}
-- records/grimmest/creatures/enemies/hero was a copy of the vanilla
-- records/creatures/enemies/hero so there is no point duplicating this
--gd.grimmest.heroes2 = {}
gd.grimmest.bosses  = {}
gd.grimmest.nemesis = {}

gd.grimmest.tag = {}
gd.grimmest.tok = {}
gd.grimmest.densityDoubled = false
gd.grimmest.default        = GRIMMEST_OFF
gd.grimmest.index          = gd.grimmest.default

gd.grimmest.tag      = { "tagGrimmestNotifyIsOff", "tagGrimmestNotifyIsLow", "tagGrimmestNotifyIsMod", "tagGrimmestNotifyIsML1", "tagGrimmestNotifyIsML2", "tagGrimmestNotifyIsML3", "tagGrimmestNotifyIsM11", "tagGrimmestNotifyUndef" }
--gd.grimmest.factions = { "aetherial", "aetherialvanguard", "beast", "chthonian", "eldritch", "outlaw", "undead" }
gd.grimmest.tok      = { "GRIMMEST_OFF", "GRIMMEST_LOW", "GRIMMEST_MOD", "GRIMMEST_ML1", "GRIMMEST_ML2", "GRIMMEST_ML3", "GRIMMEST_M11" }
gd.grimmest.tokDD    = { "DENSITY_SINGLE", "DENSITY_DOUBLE" }

-- ------------------------------------------------------------------------
-- Spawn related tables
-- ------------------------------------------------------------------------
-- Used in gd.grimmest.heroSpawn
-- Spawn Count = Ceil(minBoost + maxMultiplier * (spawn number parameter + randtab[random(100)]) / 2)
--gd.grimmest.randtab = { 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }

-- I prefer:
-- Spawn Count = Ceil(random(minBoos, maxBoost) + maxMultiplier * spawn number parameter)
-- otherwise the randtab has too much influence, going from 1 to 7 when the parameter goes from 1 to 9
-- (on top of the sum being divided by two, so further reducing the parameter's impact on the actual
--  number of spawns)

--                                OFF   A       N       M       P       S      11
gd.grimmest.grimMinBoost       = { 0,   0,      0,      1,      1,      2,      2    } -- adjusts number of hero spawns
gd.grimmest.grimMaxBoost       = { 0,   0,      1,      2,      3,      5,      7    } -- adjusts number of hero spawns
gd.grimmest.grimMultiplier     = { 0,   0.15,   0.25,   0.35,   0.5,    0.75,   1.0  } -- multiplier for randomized number of hero spawns
gd.grimmest.domMinBoost        = { 0,   0,      1,      1,      2,      3,      3    } -- adjusts number of hero spawns
gd.grimmest.domMaxBoost        = { 0,   2,      3,      4,      4,      5,      5    } -- adjusts number of hero spawns
gd.grimmest.domMultiplier      = { 0,   0.15,   0.25,   0.35,   0.45,   0.6,    0.6  } -- multiplier for randomized number of hero spawns
gd.grimmest.bossNum            = { 0,   0,      1,      1,      2,      3,      3    } -- number of bosses that can spawn, each with its individual chance
gd.grimmest.bossChance         = { 0,   0,     10,     25,     20,     20,     20    } -- chance for a boss to spawn
gd.grimmest.nemesisNum         = { 0,   0,      0,      0,      0,      1,      1    } -- number of nemesis that can spawn, each with its individual chance
gd.grimmest.nemesisChance      = { 0,   0,      0,      0,      0,      3,     10    } -- change for a nemesis to spawn
gd.grimmest.bossNumTotem       = { 0,   2,      2,      3,      3,      4,      4    } -- number of bosses that can spawn, each with its individual chance
gd.grimmest.bossChanceTotem    = { 0,  40,     60,     40,     60,     40,     60    } -- chance for a boss to spawn
gd.grimmest.nemesisNumTotem    = { 0,   0,      0,      0,      1,      1,      1    } -- number of nemesis that can spawn, each with its individual chance
gd.grimmest.nemesisChanceTotem = { 0,   0,      0,      0,     10,     30,     50    } -- change for a nemesis to spawn from a totem

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
	local tag = gd.grimmest.tag[ gd.grimmest.index ]

	if ( tag ~= nil ) then
		if ( gd.grimmest.densityDoubled ) then
			tag = string.format( "%sDD", tag )
		end

		UI.Notify( tag )

		if ( DEBUG == true ) then
			UI.Notify( string.format( "boss # : %d, boss %% : %3.2f, nemesis %% : %3.2f",
			  gd.grimmest.bossNum[gd.grimmest.index], gd.grimmest.bossChance[gd.grimmest.index],
			  gd.grimmest.nemesisChance[gd.grimmest.index] ) )
		end
	else
		UI.Notify( "tagGrimmestNotifyError0" )
	end
end

function gd.grimmest.removePN( player )
	while player:HasItem( PN_DBR, 1, false ) do
		player:TakeItem( PN_DBR, 1, false )
	end
end

function gd.grimmest.ensureOnePN( player )
	-- gd.grimmest.removePN( player )

	if ( not player:HasItem( PN_DBR, 1, false ) ) then
   	player:TakeItem( PN_DBR, 1, false )
    print "Your nyborg has expired...look for Zeke in the hideout."
		--player:GiveItem( PN_DBR, 1, false ) --make sure the player can't lose the vendor summon
	end
end

function gd.grimmest.removeAllTokens()
	-- { "GRIMMEST_OFF", "GRIMMEST_LOW", "GRIMMEST_MOD", "GRIMMEST_ML1", "GRIMMEST_ML2", "GRIMMEST_ML3", "GRIMMEST_M11" }
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 1 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 2 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 3 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 4 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 5 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 6 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tok [ 7 ] )

	-- { "DENSITY_SINGLE", "DENSITY_DOUBLE" }
	RemoveTokenFromLocalPlayer( gd.grimmest.tokDD[ 1 ] )
	RemoveTokenFromLocalPlayer( gd.grimmest.tokDD[ 2 ] )
end

function gd.grimmest.removeCurrentToken()
	local token = gd.grimmest.tok[ gd.grimmest.index ]

	if ( token ~= nil ) then
		RemoveTokenFromLocalPlayer( token )
	end

	if ( gd.grimmest.densityDoubled ) then
		RemoveTokenFromLocalPlayer( gd.grimmest.tokDD[ 2 ] )
	else
		RemoveTokenFromLocalPlayer( gd.grimmest.tokDD[ 1 ] )
	end
end

function gd.grimmest.giveCurrentToken()
	local token = gd.grimmest.tok[ gd.grimmest.index ]

	if ( token ~= nil ) then
		GiveTokenToLocalPlayer( token )
	end

	if ( gd.grimmest.densityDoubled ) then
		GiveTokenToLocalPlayer( gd.grimmest.tokDD[ 2 ] )
	else
		GiveTokenToLocalPlayer( gd.grimmest.tokDD[ 1 ] )
	end
end

-- ========================================================================
--	Zeke related functions
-- ========================================================================
--function gd.grimmest.destroyZeke()
--	if ( not Server ) then return end

--	if ( zekeNpc ~= nil ) then
--		zekeNpc:Destroy()
--		zekeNpc = nil
--	end

--	if ( zekeTrig ~= nil ) then
--		zekeTrig:Destroy()
--		zekeTrig = nil
--	end
--end

--function gd.grimmest.createZeke( coords )
--	if ( not Server ) then return end

--	if ( zekeNpc == nil ) then
--		zekeNpc = Entity.Create( ZEKE_NPC_DBR )

--		gd.grimmest.notify()
--	end

--	if ( zekeTrig == nil ) then
--		zekeTrig = Entity.Create( ZEKE_TRIG_DBR )
--	end

--	zekeNpc:NetworkEnable()
--	zekeTrig:NetworkEnable()
--	zekeNpc:SetCoords( coords )
--	zekeTrig:SetCoords( coords )
--end

--function gd.grimmest.OnDestroy_Controller( objectID )
--	if ( not Server ) then return end
--  print "Destroy"
--	local player = Game.GetLocalPlayer()
--	if ( player == nil ) then return end

--	local playerCoords = player:GetCoords()
--	gd.grimmest.createZeke( playerCoords )
--	--gd.grimmest.notify()
--end

--function gd.grimmest.OnDrop_Controller( objectID )
--  print "Drop"
--	if ( not Server ) then return end

--	local object = Entity.Get( objectId )
--	if ( object == nil ) then return end

--	object:Destroy()
--end

--function gd.grimmest.OnLeave( objectID )
--	--if the player leaves the bounding box, the bounding box + vendor are destroyed
--	if ( not Server ) then return end

--	gd.grimmest.destroyZeke()
--end

-- ------------------------------------------------------------------------
-- Zeke conversation related functions to affect the difficulty
-- ------------------------------------------------------------------------
function gd.grimmest.setIndex( index, dd )
	gd.grimmest.removeCurrentToken()

	if ( index < GRIMMEST_OFF ) then
		gd.grimmest.index = GRIMMEST_OFF
		--UI.Notify( "tagGrimmestNotifyIsOnMin" )
	elseif ( index > GRIMMEST_MAX ) then
		gd.grimmest.index = GRIMMEST_MAX
		--UI.Notify( "tagGrimmestNotifyIsOnMax" )
	else
		gd.grimmest.index = index
	end

	gd.grimmest.densityDoubled = dd

	gd.grimmest.giveCurrentToken()
end

function gd.grimmest.turnOn() 	-- Lol, function turnOn should be called turnUp
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.index + 1, gd.grimmest.densityDoubled )
	--gd.grimmest.notify()
end

function gd.grimmest.densityOn()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.index, true )
	--gd.grimmest.notify()
end

function gd.grimmest.densityOff()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.index, false )
	--gd.grimmest.notify()
end

function gd.grimmest.turnDown()
	if ( not Server ) then return end

	gd.grimmest.setIndex( gd.grimmest.index - 1, gd.grimmest.densityDoubled )
	--gd.grimmest.notify()
end

function gd.grimmest.turnOff()
	if ( not Server ) then return end

	gd.grimmest.setIndex( GRIMMEST_OFF, gd.grimmest.densityDoubled )
	--gd.grimmest.notify()
end

-- ========================================================================
-- Player OnAddToWorld function
-- ========================================================================
function gd.grimmest.initMaxZeke()
	if ( DEBUG == true ) then
		UI.Notify( "tagGrimmestDEBUGInit" )
	end

	zekeCount          = 0
	currHeroBoostMin   = gd.grimmest.domMinBoost[ gd.grimmest.index ]
	currHeroBoostMax   = gd.grimmest.domMaxBoost[ gd.grimmest.index ]
	currHeroMultiplier = gd.grimmest.domMultiplier[ gd.grimmest.index ]
	currBossNum        = gd.grimmest.bossNum[ gd.grimmest.index ]
	currBossChance     = gd.grimmest.bossChance[ gd.grimmest.index ]
	currNemesisNum     = gd.grimmest.nemesisNum[ gd.grimmest.index ]
	currNemesisChance  = gd.grimmest.nemesisChance[ gd.grimmest.index ]
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
		player:GiveItem( PN_DBR, 1, false )
		--UI.Notify( "tagGrimmestOpenedDC" )
	end

	if ( not Server ) then
		gd.grimmest.removePN( player )

		return
	end

	math.randomseed( Time.Now() )

	if ( grimmestInit ) then return	end

	grimmestInit = true

	gd.grimmest.ensureOnePN( player )

	local index = GRIMMEST_UNDEF
	for i = 1, table.getn( gd.grimmest.tok ) do
		if ( player:HasToken( gd.grimmest.tok[ i ] ) ) then
			index = i
			break
		end
	end

	if ( index == GRIMMEST_UNDEF ) then
		gd.grimmest.index = GRIMMEST_OFF
	else
		gd.grimmest.index = index
	end

	if ( player:HasToken( gd.grimmest.tokDD[ 2 ] ) ) then
		gd.grimmest.densityDoubled = true
	else
	 	gd.grimmest.densityDoubled = false
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
-- Not used, commented out
-- function gd.grimmest.byChance( percent )
-- 	return ( random( 1, 100 / percent ) == 1 )
-- end

-- Not used, commented out
-- function gd.grimmest.getFromMinToMax( min, max )
-- 	local pct = 100 / gd.grimmest.chance[ gd.grimmest.index ]
-- 	local rv = min
--
-- 	for i = 1,max do
-- 		if ( random( 1, pct ) == 1 ) then
-- 			rv = rv + 1
-- 		end
-- 	end
--
-- 	return ( rv )
-- end

function gd.grimmest.doubleDip( objectId )
	if ( not Server ) then return end

	local object = Entity.Get( objectId )
	if ( object == nil ) then return end

	if ( not object:IsReloaded() ) then
		local coords = object:GetCoords()
		if ( coords ~= nil ) then
			-- To spawn more monsters, create a second proxy from records/grimmest/proxies
			-- Proxies in records/grimmest/proxies do not have the onAddToWorld,gd.grimmest.OnAddToWorld_proxy*
			-- so they do not spawn extra heroes, only extra regular monsters
			local proxy = Proxy.Create( string.gsub( object:GetName(), "records/", "records/grimmest/" ), coords.origin )
			if ( proxy ~= nil ) then
				proxy:SetCoords( coords )
			end
		end
	end
end

-- count comes in from 1 to 9
function gd.grimmest.heroSpawn( objectId, faction, count, spawntype )
	if ( not Server ) then return end

	if ( gd.grimmest.index == GRIMMEST_OFF ) then return end

	local object = Entity.Get( objectId )
	if ( object == nil ) then return end

	if ( object:IsReloaded() ) then return end

	local coords = object:GetCoords()
	if ( coords == nil ) then return end

	local avgPlayerLvl = Game.GetAveragePlayerLevel()

	--Ceil(random(minBoost, maxBoost) + multiplier * spawn number parameter)
	local minb      = 0
	local maxb      = 0
	local mult      = 0
	local boost     = 0
	--local rng     = gd.grimmest.randtab[ random( 1, 100 ) ]
	local heroCount = 0

	if ( DOM_MODE == true ) then
		if ( gd.grimmest.index == GRIMMEST_MAX ) then
			minb  = currHeroBoostMin
			maxb  = currHeroBoostMax
			mult  = currHeroMultiplier
		else
			minb  = gd.grimmest.domMinBoost[ gd.grimmest.index ]
			maxb  = gd.grimmest.domMaxBoost[ gd.grimmest.index ]
			mult  = gd.grimmest.domMultiplier[ gd.grimmest.index ]
		end
	else
		minb  = gd.grimmest.grimMinBoost[ gd.grimmest.index ]
		maxb  = gd.grimmest.grimMaxBoost[ gd.grimmest.index ]
		mult  = gd.grimmest.grimMultiplier[ gd.grimmest.index ]
	end

	if ( minb == maxb ) then
	  boost   = maxb
	else
	  boost   = random( minb, maxb )
	end

	heroCount = math.ceil( boost + ( count * mult ) )

	--if ( DEBUG == true ) then
	--	UI.Notify( string.format( "[rand(%d, %d) =] %d + (%d * %3.2f) = %d", minb, maxb, boost, count, mult, heroCount ) )
	--end

	if ( heroCount > 0 ) then
		for i = 1, heroCount do
			local spawn = Character.Create( gd.grimmest.heroes[ faction ][ random( 1, table.getn( gd.grimmest.heroes[ faction ] ) ) ], avgPlayerLvl, nil )
			if ( spawn ~= nil ) then
				spawn:SetCoords(coords)
			end
		end
	end

	if ( DOM_MODE == false ) then return end

	local bossNum    = 0
	local bossChance = 0
	if spawntype == SPAWNTYPE_NORMAL then
		if ( gd.grimmest.index == GRIMMEST_MAX ) then
			bossNum    = currBossNum
			bossChance = currBossChance * 100 -- allow for two decimals
		else
			bossNum    = gd.grimmest.bossNum[ gd.grimmest.index ]
			bossChance = gd.grimmest.bossChance[ gd.grimmest.index ] * 100 -- allow for two decimals
		end
	end
	if spawntype == SPAWNTYPE_TOTEM then
		bossNum    = gd.grimmest.bossNumTotem[ gd.grimmest.index ]
		bossChance = gd.grimmest.bossChanceTotem[ gd.grimmest.index ] * 100 -- allow for two decimals
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
					local diff  = Game.GetGameDifficulty()
					local index = 0
					if (diff == Game.Difficulty.Normal) then
						index = 1
					elseif (diff == Game.Difficulty.Epic) then
						index = 2
					else
						index = 3
					end

					if (index > 1) then
						for i,v in ipairs(gd.grimmest.bosslookup) do
							if ( v[1] == boss_id ) then
								boss_id = v[index]
								if ( DEBUG == true ) then
									UI.Notify( "tagGrimmestDEBUGBossExchange" )
								end

								break
							end
						end
					end

					local spawn = Character.Create( boss_id, avgPlayerLvl, nil )
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
		if ( gd.grimmest.index == GRIMMEST_MAX ) then
			nemesisNum    = currNemesisNum
			nemesisChance = currNemesisChance * 100 -- allow for two decimals
		else
			nemesisNum    = gd.grimmest.nemesisNum[ gd.grimmest.index ]
			nemesisChance = gd.grimmest.nemesisChance[ gd.grimmest.index ] * 100 -- allow for two decimals
		end
	end
	if spawntype == SPAWNTYPE_TOTEM then
		nemesisNum    = gd.grimmest.nemesisNum[ gd.grimmest.index ]
		nemesisChance = gd.grimmest.nemesisChanceTotem[ gd.grimmest.index ] * 100 -- allow for two decimals
	end

	if nemesisNum > 0 then
		if ( DEBUG == true ) then
			UI.Notify( string.format( "Nemesis: %d %%", nemesisChance ) )
		end

		for i = 1, nemesisNum do
			local rng = random( 1, 10000 )
			if rng <= nemesisChance then
				local spawn = nil
				if avgPlayerLvl <= 50 then
					spawn = Character.Create( gd.grimmest.bosses[ faction ][ random( 1, table.getn( gd.grimmest.bosses[ faction ] ) ) ], avgPlayerLvl, nil )
				else
					spawn = Character.Create( gd.grimmest.nemesis[ faction ][ random( 1, table.getn( gd.grimmest.nemesis[ faction ] ) ) ], avgPlayerLvl, nil )
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

	if ( gd.grimmest.index == GRIMMEST_MAX ) then
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

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end
end

-- ------------------------------------------------------------------------
-- Aetherials
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_aetherial_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_13( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 13, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_16( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 16, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherial_totem_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherial", 4, SPAWNTYPE_TOTEM )
	end
end

-- ------------------------------------------------------------------------
-- Aetherial Vanguard
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_aetherialvanguard_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "aetherialvanguard", 9, SPAWNTYPE_NORMAL )
	end
end

-- ------------------------------------------------------------------------
-- Beasts
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_beast_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_10( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 10, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_13( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 13, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_beast_totem_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "beast", 4, SPAWNTYPE_TOTEM )
	end
end

-- ------------------------------------------------------------------------
-- Chthonians
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_chthonian_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_chthonian_totem_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "chthonian", 4, SPAWNTYPE_TOTEM )
	end
end

-- ------------------------------------------------------------------------
-- Eldritch
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_eldritch_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 8, SPAWNTYPE_NORMAL)
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_eldritch_totem_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "eldritch", 4, SPAWNTYPE_TOTEM )
	end
end

-- ------------------------------------------------------------------------
-- Outlaws
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_outlaw_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 2, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_outlaw_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "outlaw", 9, SPAWNTYPE_NORMAL )
	end
end

-- ------------------------------------------------------------------------
-- Undead
-- ------------------------------------------------------------------------
function gd.grimmest.OnAddToWorld_proxy_undead_1( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 1, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_2( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 2, SPAWNTYPE_NORMAL)
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_3( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 3, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 4, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_5( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 5, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_6( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 6, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_7( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 7, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_8( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 8, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_9( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 9, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_13( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 13, SPAWNTYPE_NORMAL )
	end
end

function gd.grimmest.OnAddToWorld_proxy_undead_totem_4( objectId )
	if ( not Server ) then return end

	if gd.grimmest.densityDoubled then
		gd.grimmest.doubleDip( objectId )
	end

	if gd.grimmest.index ~= GRIMMEST_OFF then
		gd.grimmest.heroSpawn( objectId, "undead", 4, SPAWNTYPE_TOTEM )
	end
end
