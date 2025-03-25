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

--Hideout
Script.Load("scripts/game/map.lua")

--Shattered Affixes Mod
Script.Load("scripts/Shattered_scripts.lua")

-- Augur
--Script.Load("scripts/augur/augur.lua")

-- Eternal
Script.Load("_eternal/scripts/wavespawn.lua")
--Script.Load("_eternal/scripts/pocketloot.lua")

-- Lightweight
Script.Load("scripts/game/loot.lua")
Script.Load("scripts/game/modscript.lua")
Script.Load("scripts/game/utility.lua")