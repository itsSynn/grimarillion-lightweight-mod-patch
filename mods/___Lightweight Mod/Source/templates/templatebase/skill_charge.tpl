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
		name = "Skill Config"
		type = "list"

		Variable
		{
			name = "skillChargeLevel"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillChargeDuration"
			class = "array"
			type = "real"
			description = "Seconds"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillChargeMultipliers"
			class = "array"
			type = "real"
			description = "Damage multiplier per charge, in percent"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillChargeTime"
			class = "variable"
			type = "real"
			description = "Min time in seconds between charges"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "skillChargeTimeRanged"
			class = "variable"
			type = "real"
			description = "Min time in seconds between charges for ranged attacks"
			value = ""
			defaultValue = "1.0"
		}

	}

	Group
	{
		name = "Skill Effects"
		type = "list"

		Variable
		{
			name = "skillChargeAura"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

