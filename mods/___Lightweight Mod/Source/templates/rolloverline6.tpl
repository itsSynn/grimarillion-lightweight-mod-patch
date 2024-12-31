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
		defaultValue = "database\Templates\RolloverLine5.tpl"
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
			defaultValue = "RolloverLine6"
		}

	}

	Group
	{
		name = "Config"
		type = "list"

		Variable
		{
			name = "Line6Style"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "Line6FormatTag"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "Line6FormatTag2"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "Line6Tag"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

fileNameHistoryEntry
{
	"templates/copy (5) of rolloverline2.tpl"
	"templates/copy (5) of rolloverline2.tpl"
}
