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
		defaultValue = "database/templates/itemhookpack.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\Actor.tpl"
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
		name = "Item Parameters"
		type = "list"

		Variable
		{
			name = "itemText"
			class = "variable"
			type = "string"
			description = "^n=Carriage Return, ^g=green text, ^w=white text, ^b=blue text, ^r=red text"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemClassification"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Common;Magical;Rare;Epic;Legendary;Quest"
		}

		Variable
		{
			name = "dropSound"
			class = "variable"
			type = "file_dbr"
			description = "inventory drop"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dropSound3D"
			class = "variable"
			type = "file_dbr"
			description = "world drop"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dropSoundWater"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemCost"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemCostScalePercent"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemLevel"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "cannotPickUpMultiple"
			class = "variable"
			type = "bool"
			description = "Disallow multiple pickups"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "cannotPickUp"
			class = "variable"
			type = "bool"
			description = "Disallow pickup"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "itemHooks"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "soulbound"
			class = "variable"
			type = "bool"
			description = "Cannot drop, put in stash nor trade"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "untradeable"
			class = "variable"
			type = "bool"
			description = "Cannot drop nor trade but can be put in stash"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxStackSize"
			class = "variable"
			type = "int"
			description = "Overrides gameengine default"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "preventEasyDrops"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "preventMaleTransmute"
			class = "variable"
			type = "bool"
			description = "Prevents female only armor being used for male transmute"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Item Requirements"
		type = "list"

		Variable
		{
			name = "strengthRequirement"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "dexterityRequirement"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "intelligenceRequirement"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "levelRequirement"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dlcRequirement"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

