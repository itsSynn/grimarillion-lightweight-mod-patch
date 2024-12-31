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
		defaultValue = "database\Templates\InGameUI\Includes\WidgetWindow.tpl"
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
		name = "Config"
		type = "list"

		Variable
		{
			name = "backgroundBottom"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "backgroundCenter"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "backgroundTop"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fontStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

fileNameHistoryEntry
{
	"templates/new template.tpl"
}
