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
			defaultValue = "PulseLight"
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
			name = "minRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "8"
		}

		Variable
		{
			name = "maxRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "expandSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "firstColor.r"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.8"
		}

		Variable
		{
			name = "firstColor.g"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.6"
		}

		Variable
		{
			name = "firstColor.b"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.6"
		}

		Variable
		{
			name = "secondColor.r"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.8"
		}

		Variable
		{
			name = "secondColor.g"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.4"
		}

		Variable
		{
			name = "secondColor.b"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.4"
		}

		Variable
		{
			name = "colorPeriod"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3"
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
	"Templates\Engine\Copy of Light.tpl"
}
