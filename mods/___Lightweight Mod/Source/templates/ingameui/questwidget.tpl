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
		defaultValue = "database/templates/ingameui/includes/widgetwindow.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/ingameui/includes/border.tpl"
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
			defaultValue = "UIQuestWidget"
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
		name = "QuestWidget"
		type = "list"

		Variable
		{
			name = "titleTag"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "tagQuests"
		}

		Variable
		{
			name = "titleFontStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "questFontStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "taskFontStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objectiveFontStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objectiveBitmap"
			class = "variable"
			type = "file_dbr"
			description = "UIMultiBitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "toggleButton"
			class = "variable"
			type = "file_dbr"
			description = "UIButton"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "mainQuestIcon"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

