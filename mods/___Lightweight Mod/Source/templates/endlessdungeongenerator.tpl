Group
{
	name = "All Groups"
	type = "list"

	Group
	{
		name = "Header"
		type = "system"

		Variable
		{
			name = "ActorName"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "Class"
			class = "static"
			type = "string"
			description = ""
			value = ""
			defaultValue = "EndlessDungeonGenerator"
		}

		Variable
		{
			name = "FileDescription"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "EndlessDungeon Ruleset"
		}

	}

	Group
	{
		name = "Config"
		type = "list"

		Variable
		{
			name = "floors"
			class = "variable"
			type = "int"
			description = "number of connected non-boss floors to generate"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "floorList"
			class = "array"
			type = "file_dbr"
			description = "pool of possible floors"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossFloorList"
			class = "array"
			type = "file_dbr"
			description = "pool of possible boss floors"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specialFloors"
			class = "array"
			type = "file_dbr"
			description = "one time use floors"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "proxies"
			class = "variable"
			type = "int"
			description = "number of regular monster ProxyEndless to activate"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "heroProxies"
			class = "variable"
			type = "int"
			description = "number of hero monster ProxyEndless to activate"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossProxies"
			class = "variable"
			type = "int"
			description = "number of boss monster ProxyEndless to activate"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "trapProxies"
			class = "variable"
			type = "int"
			description = "number of trap/booster ProxyEndless to activate"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "nemesisProxyWeights"
			class = "array"
			type = "int"
			description = "weighted number of nemesis proxies"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shrineProxyWeights"
			class = "array"
			type = "int"
			description = "weighted number of shrine proxies"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxShrines"
			class = "variable"
			type = "int"
			description = "maximum number of shrine ProxyEndless to activate for each dungeon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "floorTotalNormal"
			class = "variable"
			type = "equation"
			description = "total value to be reached to progress on each floor (tierDifficulty) (numberOfProxies)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "floorTotalElite"
			class = "variable"
			type = "equation"
			description = "total value to be reached to progress on each floor (tierDifficulty) (numberOfProxies)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "floorTotalUltimate"
			class = "variable"
			type = "equation"
			description = "total value to be reached to progress on each floor (tierDifficulty) (numberOfProxies)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "difficultyAdjustmentNormal"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "difficultyAdjustmentElite"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "difficultyAdjustmentUltimate"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "timerNormal"
			class = "variable"
			type = "equation"
			description = "bonus timer (tierDifficulty)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "timerElite"
			class = "variable"
			type = "equation"
			description = "bonus timer (tierDifficulty)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "timerUltimate"
			class = "variable"
			type = "equation"
			description = "bonus timer (tierDifficulty)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bonusTimeHero"
			class = "variable"
			type = "real"
			description = "time to add when a hero monster is killed"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bonusTimeBoss"
			class = "variable"
			type = "real"
			description = "time to add when a boss monster is killed"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bonusTimeNemesis"
			class = "variable"
			type = "real"
			description = "time to add when a nemesis monster is killed"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dyingPenalty"
			class = "variable"
			type = "real"
			description = "seconds"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "killCountMinimum"
			class = "variable"
			type = "int"
			description = "Minimum before bonus time is rewarded"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "killCountBonusTime"
			class = "variable"
			type = "equation"
			description = "rewards bonus time (seconds) based on kills (killCounter)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "killCountResetTime"
			class = "variable"
			type = "real"
			description = "Time to reset kill counter"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Drops"
		type = "list"

		Variable
		{
			name = "itemNameCommon"
			class = "variable"
			type = "file_dbr"
			description = "Floor progression item from common monsters"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemNameChampion"
			class = "variable"
			type = "file_dbr"
			description = "Floor progression item from champion monsters"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemNameHero"
			class = "variable"
			type = "file_dbr"
			description = "Floor progression item from hero monsters"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemNameQuestBoss"
			class = "variable"
			type = "file_dbr"
			description = "Floor progression item from quest/boss monsters"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "commonChance"
			class = "variable"
			type = "int"
			description = "Chance to drop"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "championChance"
			class = "variable"
			type = "int"
			description = "Chance to drop"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "heroChance"
			class = "variable"
			type = "int"
			description = "Chance to drop"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "questBossChance"
			class = "variable"
			type = "int"
			description = "Chance to drop"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "disableMonsterDrops"
			class = "variable"
			type = "bool"
			description = "Disable all monster loot drops "
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "allowedItems"
			class = "array"
			type = "file_dbr"
			description = "Allowed item drops"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "blacklistedHeroes"
			class = "array"
			type = "file_dbr"
			description = "Prevent these heroes from dropping dungeon drops"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Monster Overrides"
		type = "list"

		Variable
		{
			name = "factionOverride"
			class = "variable"
			type = "file_dbr"
			description = "Applies faction override to all monsters"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "distressCallGroupOverride"
			class = "variable"
			type = "string"
			description = "Only boss floor"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "distressResponseGroupOverride"
			class = "variable"
			type = "string"
			description = "Only boss floor"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "roamBehaviorOverride"
			class = "picklist"
			type = "string"
			description = "Only boss floor"
			value = ""
			defaultValue = "NeverRoam;Roam"
		}

		Variable
		{
			name = "viewDistanceOverride"
			class = "variable"
			type = "real"
			description = "Only boss floor"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "distressCallRangeOverride"
			class = "variable"
			type = "real"
			description = "Only boss floor"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "healthGainOnKillPct"
			class = "variable"
			type = "int"
			description = "Applies to all monsters"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "healthGainOnKillDifficulty"
			class = "variable"
			type = "int"
			description = "Applies to all monsters"
			value = ""
			defaultValue = ""
		}

	}

}

