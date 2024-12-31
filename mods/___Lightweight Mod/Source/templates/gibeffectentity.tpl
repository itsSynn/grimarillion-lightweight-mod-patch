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
		defaultValue = "database\Templates\Effect.tpl"
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
			defaultValue = "GibEffectEntity"
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
		name = "GibEffectEntity"
		type = "list"

		Variable
		{
			name = "gibNames"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minGibs"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxGibs"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "minGibScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "maxGibScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "minGibSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "maxGibSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "multipleGibs"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "launchDistance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "selfCollide"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

	}

}

