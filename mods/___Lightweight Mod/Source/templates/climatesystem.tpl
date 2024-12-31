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
			description = "ClimateSystem"
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
		name = "Climate Data"
		type = "list"

		Variable
		{
			name = "system1"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minIntensity1"
			class = "variable"
			type = "int"
			description = "0-100"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxIntensity1"
			class = "variable"
			type = "int"
			description = "0-100"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "system2"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minIntensity2"
			class = "variable"
			type = "int"
			description = "0-100"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxIntensity2"
			class = "variable"
			type = "int"
			description = "0-100"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "system3"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minIntensity3"
			class = "variable"
			type = "int"
			description = "0-100"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxIntensity3"
			class = "variable"
			type = "int"
			description = "0-100"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "darknessAdjustment"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "windIntensity"
			class = "variable"
			type = "real"
			description = "Intensity of the wind from zero to one (zero = default wind, 1 = max strength)"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "fogDensityAdjustment"
			class = "variable"
			type = "real"
			description = "Fog density adjustment at maximum intensity (0.0 to 1.0, additive)"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "fogDistanceAdjustment"
			class = "variable"
			type = "real"
			description = "Fog distance adjustment at maximum intensity (in meters, positive values move the fog out), additive)"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "fogColorAdjustment.R"
			class = "variable"
			type = "int"
			description = "Fog color adjustment (red component, -100 to 100, additive)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "fogColorAdjustment.G"
			class = "variable"
			type = "int"
			description = "Fog color adjustment (green component, -100 to 100, additive)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "fogColorAdjustment.B"
			class = "variable"
			type = "int"
			description = "Fog color adjustment (blue component, -100 to 100, additive)"
			value = ""
			defaultValue = "0"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\New Template.tpl"
	"Templates\ClimateSystem.tpl"
}
