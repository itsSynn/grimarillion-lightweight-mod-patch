/*
	
	GRIM DAWN
	scripts/main.lua
	
	Scripting entrypoint.
	
	For more information visit us at http://www.grimdawn.com
	
*/

-- Libs
Script.Load("scripts/libs/shared.lua")

-- Game
Script.Load("scripts/game/grimdawn.lua")

--Grimmest
Script.Load("scripts/grimmest/grimmest.lua")

--Grim Quest
Script.Load("scripts/grimquest/itemswaps.lua")

--D3
Script.Load("Scripts/D3/TotemWarning.lua")

--Grimarillion
--Script.Load("Scripts/d3/d3_swap.lua")

Script.Load("Scripts/grimarillion/Swapper.lua")
Script.Load("Scripts/grimarillion/GrimarNotifier.lua")
--Script.Load("Scripts/grimarillion/GrimarDismantler.lua")

--Hideout
Script.Load("scripts/game/map.lua")

--Shattered Affixes Mod
Script.Load("scripts/Shattered_scripts.lua")

-- Augur
--Script.Load("scripts/augur/augur.lua") -- no longer needed

-- Eternal
Script.Load("_eternal/scripts/wavespawn.lua")

--Swamp Mod
Script.Load("_swampmod/scripts/swampmod.lua") --disabled, spawn scripts from consumables don't workyet

-- Lightweight
Script.Load("scripts/game/loot.lua")
Script.Load("scripts/game/modscript.lua")
Script.Load("scripts/game/utility.lua")