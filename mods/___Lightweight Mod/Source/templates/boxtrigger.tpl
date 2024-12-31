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
		defaultValue = "database\Templates\AreaTrigger.tpl"
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
			description = "BoxTrigger"
			value = ""
			defaultValue = "BoxTrigger"
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
		name = "AreaTrigger"
		type = "list"

		Variable
		{
			name = "extentsX"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "extentsY"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "extentsZ"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "5.0"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\New Template.tpl"
}
