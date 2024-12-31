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
		name = "UI Infomation"
		type = "list"

		Variable
		{
			name = "skillDisplayName"
			class = "variable"
			type = "string"
			description = "Tag for display name"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillBaseDescription"
			class = "variable"
			type = "string"
			description = "Tag for desciption"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillUpBitmapName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillDownBitmapName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillConnectionOff"
			class = "array"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillConnectionOn"
			class = "array"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "isPetDisplayable"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "isPetBonusScaling"
			class = "variable"
			type = "bool"
			description = "Skill stats scale with pet bonus"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "trackerOverride"
			class = "variable"
			type = "string"
			description = "Tag to display on the buff tracker"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "trackerShowDetail"
			class = "variable"
			type = "bool"
			description = "Shows skill attributes on buff tracker"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "roundBitmap"
			class = "variable"
			type = "bool"
			description = "Used for duration and cooldown wipes"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Skill Config"
		type = "list"

		Variable
		{
			name = "skillTier"
			class = "picklist"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0;1;2;3;4;5;6;7;8;9"
		}

		Variable
		{
			name = "skillMasteryLevelRequired"
			class = "variable"
			type = "int"
			description = "Mastery level to add first point"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "skillMaxLevel"
			class = "variable"
			type = "int"
			description = "Max level of skill"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "skillSpecialAnimationName"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillUltimateLevel"
			class = "variable"
			type = "int"
			description = "Max level allowed when augmented"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "excludeRacialDamage"
			class = "variable"
			type = "bool"
			description = "Set true to never use racial damage"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "exclusiveSkill"
			class = "variable"
			type = "bool"
			description = "Set true for unique skills"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "weaponDamagePct"
			class = "array"
			type = "real"
			description = "Percentage weapon damage to use for each skill level"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "retaliationDamagePct"
			class = "array"
			type = "real"
			description = "Percentage retaliation damage to use for each skill level"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "targetingMode"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Default;Point;Object;Target"
		}

		Variable
		{
			name = "autoCastSkill"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "autoCastController"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "forceMovement"
			class = "variable"
			type = "bool"
			description = "Force character movement into cast range"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "achievementTracking"
			class = "variable"
			type = "bool"
			description = "Used for achievement tracking"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Qualifying Weapons"
		type = "list"

		Variable
		{
			name = "Sword"
			class = "variable"
			type = "bool"
			description = "Set to -1- to require type"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Axe"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Mace"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Dagger"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Scepter"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Axe2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Sword2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Mace2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Spear"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Staff"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Magical"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Shield"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Offhand"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Ranged1h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "Ranged2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "dualWieldOnly"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "dualRangedOnly"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "dualRangedOrRanged2hOnly"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "dualRangedOrAllRangedOnly"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "shieldNoRanged"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "unarmedOnly"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Skill Dependancy"
		type = "list"

		Variable
		{
			name = "skillDependancy"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillDependancyAll"
			class = "variable"
			type = "bool"
			description = "Skill requires all skills in the dependancy list (true), or just one (false)"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Skill Effects"
		type = "list"

		Variable
		{
			name = "targetFxPakName"
			class = "array"
			type = "file_dbr"
			description = "FxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "warmupFxPakName"
			class = "array"
			type = "file_dbr"
			description = "FxPak used only by skills that have a warmup"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Devotion Config"
		type = "list"

		Variable
		{
			name = "skillTemplates"
			class = "array"
			type = "file_dbr"
			description = "Accepted skill types for this devotion skill"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillBlackList"
			class = "array"
			type = "file_dbr"
			description = "Blacklisted skills that cannot be attached to this skill"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "templateAutoCast"
			class = "variable"
			type = "file_dbr"
			description = "Autocast controller for this devotion skill"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillExperienceLevels"
			class = "array"
			type = "int"
			description = "Devotion skill xp levels"
			value = ""
			defaultValue = ""
		}

	}

}

