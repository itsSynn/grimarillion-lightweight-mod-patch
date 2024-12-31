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
		defaultValue = "database\Templates\Decoration.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Reward.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/questmarker.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/destructiblehookpack.tpl"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "level"
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
			defaultValue = "Destructible"
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
		name = "Destructible"
		type = "list"

		Variable
		{
			name = "passableWhen"
			class = "picklist"
			type = "string"
			description = "When can the object be pathed through?"
			value = ""
			defaultValue = "Intact;Broken;Always;Never"
		}

		Variable
		{
			name = "maxLifeEquation"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "life"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "95"
		}

		Variable
		{
			name = "maxLife"
			class = "variable"
			type = "int"
			description = "Number of hitpoints "
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "playerDamageOnly"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "brokenMesh"
			class = "variable"
			type = "file_msh"
			description = "Broken mesh"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fixedStatics"
			class = "array"
			type = "string"
			description = "Names of bones which are always static"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "randomStatics"
			class = "array"
			type = "string"
			description = "Names of bones to randomly make static"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minNumRandomStatics"
			class = "variable"
			type = "int"
			description = "Minimum number of randoms tatics to pick"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxNumRandomStatics"
			class = "variable"
			type = "int"
			description = "Maximum number of random statics to pick (0 = all)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "breakForceMin"
			class = "variable"
			type = "real"
			description = "Minimum speed at which pieces come apart (N)"
			value = ""
			defaultValue = "2"
		}

		Variable
		{
			name = "breakForceMax"
			class = "variable"
			type = "real"
			description = "Maximum speed at which pieces come apart (N)"
			value = ""
			defaultValue = "4"
		}

		Variable
		{
			name = "breakMode"
			class = "picklist"
			type = "string"
			description = "Type of break (default = Explode)"
			value = ""
			defaultValue = "React;Explode;Fall;Crumple"
		}

		Variable
		{
			name = "fallDirectionX"
			class = "variable"
			type = "real"
			description = "Direction to fall in (object space) if breakMode is Fall"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "fallDirectionY"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "fallDirectionZ"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "crushDamageEquation"
			class = "variable"
			type = "equation"
			description = "Amount of crush damage to apply where the pieces land"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "crushDamageMin"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "crushDamageMax"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1000000"
		}

		Variable
		{
			name = "rubbleLife"
			class = "variable"
			type = "real"
			description = "Time before fade out starts (seconds)"
			value = ""
			defaultValue = "5"
		}

		Variable
		{
			name = "rubbleFade"
			class = "variable"
			type = "real"
			description = "Fade out time (seconds)"
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "breakSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when the destructible breaks"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "impactSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a piece impacts ground"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "splashSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a piece impacts water"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "trailEffect"
			class = "variable"
			type = "file_dbr"
			description = "Effect to attach to the broken pieces (EffectEntity)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "breakEffects"
			class = "array"
			type = "file_dbr"
			description = "List of effects to play when the destructible breaks (EffectEntity)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "breakEffectAttachpoints"
			class = "array"
			type = "string"
			description = "Attachpoint names to attach the break effects to"
			value = ""
			defaultValue = "FXBreak01"
		}

		Variable
		{
			name = "selfCollide"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "targetable"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "intactEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "intactSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "invulnerable"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "attackAnimation"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Attack;Kick"
		}

		Variable
		{
			name = "door"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "playerOnly"
			class = "variable"
			type = "bool"
			description = "Can only be broken by players?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "removeAttachedEntities"
			class = "variable"
			type = "bool"
			description = "Remove any attached entities when broken"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Loot"
		type = "list"

		Variable
		{
			name = "minLevel"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxLevel"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "lootTable"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootClassification"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Common;Champion;Hero;Boss;"
		}

		Variable
		{
			name = "lootChance"
			class = "variable"
			type = "int"
			description = "Chance to drop loot (percent)"
			value = ""
			defaultValue = "100"
		}

	}

}

