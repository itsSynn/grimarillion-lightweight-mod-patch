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
		defaultValue = "database/templates/entity.tpl"
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
			defaultValue = "NavBlocker"
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
		name = "NavBlocker"
		type = "list"

		Variable
		{
			name = "radius"
			class = "variable"
			type = "real"
			description = "Radius to block on the navmesh (m)"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "height"
			class = "variable"
			type = "real"
			description = "Height of the blocker"
			value = ""
			defaultValue = "3.0"
		}

	}

}

