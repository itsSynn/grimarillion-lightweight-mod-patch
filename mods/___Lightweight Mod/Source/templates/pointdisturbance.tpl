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
			defaultValue = "PointDisturbance"
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
		name = "PointDisturbance"
		type = "list"

		Variable
		{
			name = "minPeriod"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.1"
		}

		Variable
		{
			name = "maxPeriod"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.2"
		}

		Variable
		{
			name = "minRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "minStrength"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "maxStrength"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "5"
		}

		Variable
		{
			name = "fallOff"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "mode"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Radial;Directional;Circle"
		}

		Variable
		{
			name = "randomizePosition"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "randomizeRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "step"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

}

