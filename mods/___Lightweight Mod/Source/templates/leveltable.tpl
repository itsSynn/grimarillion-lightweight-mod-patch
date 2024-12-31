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
			defaultValue = "LevelTable"
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
		name = "LevelTable"
		type = "list"

		Variable
		{
			name = "levels"
			class = "array"
			type = "int"
			description = "List of threshold levels."
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "records"
			class = "array"
			type = "file_dbr"
			description = "Table to use when level is greater than or equal to the corresponding thredhold level."
			value = ""
			defaultValue = ""
		}

	}

}

