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
			defaultValue = "EndlessDungeonFloor"
		}

		Variable
		{
			name = "FileDescription"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "EndlessDungeonFloor"
		}

	}

	Group
	{
		name = "Config"
		type = "list"

		Variable
		{
			name = "regions"
			class = "array"
			type = "string"
			description = "regions of floor"
			value = ""
			defaultValue = ""
		}

	}

}

