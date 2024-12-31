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
			defaultValue = "FlickerLight"
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
		name = "Light Variables"
		type = "list"

		Variable
		{
			name = "radius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "color.r"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "color.g"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "color.b"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "minOn"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "maxOn"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "minOff"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.1"
		}

		Variable
		{
			name = "maxOff"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "shadowPriority"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\Engine\Copy (2) of Light.tpl"
}
