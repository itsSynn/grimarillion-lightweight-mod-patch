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
			defaultValue = "SpawnedWeatherDecoration"
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
		name = "Weather Interaction"
		type = "list"

		Variable
		{
			name = "animateAtWindSpeed"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "windDirectionBone"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minAnimateWindMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "maxAnimateWindMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "captureRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "8"
		}

		Variable
		{
			name = "funnelRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3"
		}

	}

}

