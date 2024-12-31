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
		name = "Skill Effects"
		type = "list"

		Variable
		{
			name = "skillSpellAura"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillSpellAuraDuration"
			class = "array"
			type = "real"
			description = "Seconds"
			value = ""
			defaultValue = ""
		}

	}

}

