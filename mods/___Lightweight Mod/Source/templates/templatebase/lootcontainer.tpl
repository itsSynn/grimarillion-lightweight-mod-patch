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
			defaultValue = "LootContainer"
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
			name = "levelOffset"
			class = "array"
			type = "int"
			description = "Normal, Epic, Ultimate"
			value = ""
			defaultValue = ""
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
			description = "Selects loot randomizer weights"
			value = ""
			defaultValue = "Common;Champion;Hero;Boss;"
		}

	}

}

