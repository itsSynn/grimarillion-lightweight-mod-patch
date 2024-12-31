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
		defaultValue = "database\Templates\Actor.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates\questmarker.tpl"
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
			defaultValue = "AreaOfInterest"
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

		Variable
		{
			name = "AreaDescription"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "This is a really lame area of interest description."
		}

	}

	Group
	{
		name = "QuestMarker"
		type = "list"

		Variable
		{
			name = "questOnly"
			class = "variable"
			type = "bool"
			description = "Only show when on a trackled quest?"
			value = ""
			defaultValue = "0"
		}

	}

}

