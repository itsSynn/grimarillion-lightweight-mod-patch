Group
{
	name = "All Groups"
	type = "list"

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\GameText.tpl"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "averagePlayerLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "minPlayerLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "maxPlayerLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "numberOfPlayers"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "monsterLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "monsterExperience"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Death Penalty"
		value = ""
		defaultValue = "currentPlayerLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Exp and DP"
		value = ""
		defaultValue = "gameDifficultyDV"
	}

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
			defaultValue = ""
		}

		Variable
		{
			name = "FileDescription"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Duration Damage Effects"
		type = "list"

		Variable
		{
			name = "coldDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fireDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lightningDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "poisonDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lifeDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "aetherDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "chaosDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bleedingDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "attackSpeedDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spellCastSpeedDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "runSpeedDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "offensiveAbilityDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defensiveAbilityDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "offensiveReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defensiveReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lifeLeachDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "manaLeachDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fumbleDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "sleepDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "elementalReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "totalDamageReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "totalResistReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalResistReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "elementalResistReductionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileFumbleDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "convertDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fearDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "trapDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "stunDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "knockdownDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "damageMultiplierFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Absolute Damage Effects"
		type = "list"

		Variable
		{
			name = "absColdFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absColdFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absColdMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absColdMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absFireFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absFireFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absFireMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absFireMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absLightningFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absLightningFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absLightningMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absLightningMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absPoisonFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absPoisonFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absPoisonMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absPoisonMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absLifeFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absLifeFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absLifeMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absLifeMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absAetherFx"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absAetherFxSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absAetherMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absAetherMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absChaosFx"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absChaosFxSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absChaosMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absChaosMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absManaBurnFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absManaBurnFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absManaBurnMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absManaBurnMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absDisruptionFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absDisruptionFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absDisruptionMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absDisruptionMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absPercentCurrentLifeFx"
			class = "array"
			type = "file_dbr"
			description = "EffectEntity indexed by char size"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absPercentCurrentLifeFxSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absPercentCurrentLifeMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absPercentCurrentLifeMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absPhysicalFx"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absPhysicalFxSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absPhysicalMinScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "absPhysicsMaxScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "absMaxDamageScaling"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "250"
		}

	}

	Group
	{
		name = "Common Monster Effects"
		type = "list"

		Variable
		{
			name = "confusionDamageFxPak"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "criticalhitFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Special Character Handlers"
		type = "list"

		Variable
		{
			name = "freezeDamageHandler"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petrifyDamageHandler"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Misc"
		type = "list"

		Variable
		{
			name = "armorDefensiveAbsorption"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "meleeRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.4"
		}

		Variable
		{
			name = "shortRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "moderateRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "4.0"
		}

		Variable
		{
			name = "longRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "8.0"
		}

		Variable
		{
			name = "maximumRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "12.0"
		}

		Variable
		{
			name = "bossRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "20.0"
		}

		Variable
		{
			name = "meleeTargetDistance"
			class = "variable"
			type = "real"
			description = "TQ was 2.5"
			value = ""
			defaultValue = "2.5"
		}

		Variable
		{
			name = "meleeAutoTargetDistance"
			class = "variable"
			type = "real"
			description = "TQ was 3.0"
			value = ""
			defaultValue = "3.0"
		}

		Variable
		{
			name = "alertDistance"
			class = "variable"
			type = "real"
			description = "min distance for alert+rally"
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "personalTeleportToken"
			class = "variable"
			type = "string"
			description = "Name of the token that must be owned before a player can access the personal teleporter"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "crafterToken"
			class = "variable"
			type = "string"
			description = "Name of the token to designate player has access to crafter"
			value = ""
			defaultValue = "GD_HAS_CRAFTER"
		}

		Variable
		{
			name = "dismantleToken"
			class = "variable"
			type = "string"
			description = "Name of the token to designate player has access to dismantling"
			value = ""
			defaultValue = "BLASTFURNACE_UNLOCKED"
		}

		Variable
		{
			name = "convertToken"
			class = "variable"
			type = "string"
			description = "Name of the token to designate player has access to inventor convert"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dwWeaponDamageFactor"
			class = "variable"
			type = "real"
			description = "Scaling factor to use when applying pct weapon damage to dual wield weapons"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "dwWeaponSpeedFactor"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "2hWeaponDamageFactor"
			class = "variable"
			type = "real"
			description = "Scaling factor to use when applying pct weapon damage to two handed weapons"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "ugCharacterHighlight"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.1"
		}

		Variable
		{
			name = "genericErrorSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dynamite"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "aetherCrystal"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "newCharacterTime"
			class = "variable"
			type = "real"
			description = "Time of day (0-24) for characters just starting the game"
			value = ""
			defaultValue = "9.0"
		}

	}

	Group
	{
		name = "Defaults"
		type = "list"

		Variable
		{
			name = "defaultCombatManagerRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absoluteRunSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "absoluteRunSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Movement"
		type = "list"

		Variable
		{
			name = "minRotationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3.0"
		}

		Variable
		{
			name = "maxRotationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "8.0"
		}

		Variable
		{
			name = "pathSlowdownLength"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "minPlayerRotationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "maxPlayerRotationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10.0"
		}

		Variable
		{
			name = "playerPathSlowdownLength"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.3"
		}

	}

	Group
	{
		name = "Rewards and Penalties"
		type = "list"

		Variable
		{
			name = "experienceRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Item Info"
		type = "list"

		Variable
		{
			name = "itemInfoRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "OneShot Info"
		type = "list"

		Variable
		{
			name = "questItemStackLimit"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "potionStackLimit"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "8"
		}

		Variable
		{
			name = "scrollStackLimit"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Monster Info"
		type = "list"

		Variable
		{
			name = "commonMonsterColor"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "championMonsterColor"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "heroMonsterColor"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossMonsterColor"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "questMonsterColor"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterAttributePak"
			class = "variable"
			type = "file_dbr"
			description = "Game Balance Attribute Pak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterDefenseCap"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterRunSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterRunSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterSpellCastSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterSpellCastSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterAttackSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterAttackSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossRunSpeedCapMin"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossRunSpeedCapMax"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossSpellCastSpeedCapMin"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossSpellCastSpeedCapMax"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossAttackSpeedCapMin"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bossAttackSpeedCapMax"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterSleepAggressionFalloffRate"
			class = "array"
			type = "real"
			description = "percent decrease per second"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterLevelGapFixer"
			class = "array"
			type = "int"
			description = "Index by difficulty 0 to 2 - adds to monster level"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "endBossRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Group
		{
			name = "Pet Stuff"
			type = "list"

			Variable
			{
				name = "petBannerName"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "playerPetBannerName"
				class = "variable"
				type = "file_dbr"
				description = "converted to player team"
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "monsterPetBannerName"
				class = "variable"
				type = "file_dbr"
				description = "converted to monster team"
				value = ""
				defaultValue = ""
			}

		}

		Group
		{
			name = "Races"
			type = "list"

			Variable
			{
				name = "numMonsterRaces"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "13"
			}

		}

	}

	Group
	{
		name = "Player Info"
		type = "list"

		Variable
		{
			name = "playerAttributePak"
			class = "variable"
			type = "file_dbr"
			description = "Game Balance Attribute Pak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerDefenseCap"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerRunSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerRunSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerSpellCastSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerSpellCastSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerAttackSpeedCapMin"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerAttackSpeedCapMax"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatIdleTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3.0"
		}

		Variable
		{
			name = "damageMagnitude"
			class = "array"
			type = "real"
			description = "Decreasing same type duration damage"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "playerReflectCap"
			class = "array"
			type = "real"
			description = "Index by difficulty 0 to 2"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Pet Info"
		type = "list"

		Variable
		{
			name = "petAttributePak"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "miniPetLimit"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Skill Info"
		type = "list"

		Variable
		{
			name = "skillMasteryTierLevel"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "affinity1Icon"
			class = "variable"
			type = "file_tex"
			description = "Ascendant"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "affinity2Icon"
			class = "variable"
			type = "file_tex"
			description = "Chaos"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "affinity3Icon"
			class = "variable"
			type = "file_tex"
			description = "Eldritch"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "affinity4Icon"
			class = "variable"
			type = "file_tex"
			description = "Order"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "affinity5Icon"
			class = "variable"
			type = "file_tex"
			description = "Primordial"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "autoCastEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Proxy Info"
		type = "list"

		Variable
		{
			name = "proxyRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Market Info"
		type = "list"

		Variable
		{
			name = "marketPurchaseSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "marketSaleSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "marketFactionDiscount"
			class = "array"
			type = "int"
			description = "5 values which specify the percentage discount given for each faction level of neutral or above"
			value = ""
			defaultValue = "0;5;10;15;20"
		}

	}

	Group
	{
		name = "Enchanter Info"
		type = "list"

		Variable
		{
			name = "enchanterRecoveryFactor"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "GameCamera"
		type = "list"

		Variable
		{
			name = "CameraDistanceMin"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10.0"
		}

		Variable
		{
			name = "CameraDistanceMax"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "50.0"
		}

		Variable
		{
			name = "CameraPitchMin"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "30.0"
		}

		Variable
		{
			name = "CameraPitchMax"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "50.0"
		}

		Variable
		{
			name = "CameraDistanceDefault"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "40.0"
		}

		Variable
		{
			name = "CameraPitchDefault"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "40.0"
		}

		Variable
		{
			name = "CameraDepthFogClamp"
			class = "variable"
			type = "real"
			description = "Distance past the player in the direction of the camera at which depth fog is clamped at max zoom out"
			value = ""
			defaultValue = "8.0"
		}

		Variable
		{
			name = "lightingTransformation"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "-90.0"
		}

	}

	Group
	{
		name = "UI"
		type = "list"

		Variable
		{
			name = "UICharWindowInventorySack0DimsX"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "UICharWindowInventorySack0DimsY"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "UICharWindowInventorySack1DimsX"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "UICharWindowInventorySack1DimsY"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Group
		{
			name = "Cursor"
			type = "list"

			Variable
			{
				name = "friendOutlineColor.r"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "0"
			}

			Variable
			{
				name = "friendOutlineColor.g"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "255"
			}

			Variable
			{
				name = "friendOutlineColor.b"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "0"
			}

			Variable
			{
				name = "enemyOutlineColor.r"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "255"
			}

			Variable
			{
				name = "enemyOutlineColor.g"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "0"
			}

			Variable
			{
				name = "enemyOutlineColor.b"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "0"
			}

			Variable
			{
				name = "itemOutlineColor.r"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "0"
			}

			Variable
			{
				name = "itemOutlineColor.g"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "0"
			}

			Variable
			{
				name = "itemOutlineColor.b"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = "255"
			}

			Variable
			{
				name = "relicCursorActivationSound"
				class = "variable"
				type = "file_dbr"
				description = "SoundPak"
				value = ""
				defaultValue = ""
			}

		}

		Group
		{
			name = "Item Relic"
			type = "list"

			Variable
			{
				name = "itemOverlayFontName"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "itemOverlayFontSize"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "itemOverlayFontColor"
				class = "variable"
				type = "string"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

	}

	Group
	{
		name = "Randomizer Weights"
		type = "list"

		Variable
		{
			name = "randomizerWeightsRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Scripts"
		type = "list"

		Variable
		{
			name = "scriptEntryPoints"
			class = "array"
			type = "file_lua"
			description = ""
			value = ""
			defaultValue = "scripts/main.lua"
		}

	}

	Group
	{
		name = "Floating Text"
		type = "list"

		Variable
		{
			name = "moneyPickupStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "healthPotionPickupStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "manaPotionPickupStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicPickupStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionGainStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "experienceGainStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "moneyGainStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillPointGainStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "hitStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petHitStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "critStyle"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petCritStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dodgeStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petDodgeStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "deflectStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petDeflectStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "blockStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petBlockStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "partialBlockStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petPartialBlockStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "missStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petMissStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fumbleStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petFumbleStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "invulnerableStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petInvulnerableStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "monsterCritStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "MainMenu"
		type = "list"

		Variable
		{
			name = "menuRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "menuRecordExpansion1"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "menuRecordExpansion2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "menuRecordExpansion3"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Survival Mode"
		type = "list"

		Variable
		{
			name = "survivalRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Targeting"
		type = "list"

		Variable
		{
			name = "selectionBiasLockOnMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasLockOnOffset"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasComparisonMultiplier"
			class = "variable"
			type = "real"
			description = "Increases target stickiness vs. other targets while moving (multiplied by speed)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasComparisonOffset"
			class = "variable"
			type = "real"
			description = "Increases target stickiness vs. other targers (additive)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasBaseMultiplier"
			class = "variable"
			type = "real"
			description = "Increases target stickiness vs. ground while moving (multiplied by speed)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasBaseOffset"
			class = "variable"
			type = "real"
			description = "Increases target stickiness vs. ground (additive)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasVelocityMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "selectionBiasMouseDownOffset"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Factions"
		type = "list"

		Variable
		{
			name = "factionRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Crafting"
		type = "list"

		Variable
		{
			name = "learnFormulaSoundName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Engine"
		type = "list"

		Variable
		{
			name = "omPanicThreshold"
			class = "variable"
			type = "int"
			description = "Number of objects waiting to be destroyed that causes the object manager to enter panic mode."
			value = ""
			defaultValue = "25000"
		}

		Variable
		{
			name = "omPanicRate"
			class = "variable"
			type = "int"
			description = "Number of objects to destroy per frame when above panic threshold."
			value = ""
			defaultValue = "250"
		}

		Variable
		{
			name = "defaultLoadDistance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "250"
		}

	}

	Group
	{
		name = "Challenge"
		type = "list"

		Variable
		{
			name = "challengeAdjustment"
			class = "variable"
			type = "file_dbr"
			description = "GameAdjustment"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "PvP"
		type = "list"

		Variable
		{
			name = "pvpDamageMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pvpCrowdControlDurationMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Achievements"
		type = "list"

		Variable
		{
			name = "achievementRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Loading Tips"
		type = "list"

		Variable
		{
			name = "tipsRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

