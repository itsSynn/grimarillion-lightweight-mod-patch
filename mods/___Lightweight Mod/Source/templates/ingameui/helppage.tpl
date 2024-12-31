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
		defaultValue = "database\Templates\InGameUI\ScrollableWindow.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\InGameUI\Includes\Border.tpl"
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
		name = "HelpPage"
		type = "list"

		Variable
		{
			name = "background"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "contentX"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "contentY"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "contentWidth"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "300"
		}

	}

}

