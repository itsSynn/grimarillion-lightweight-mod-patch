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
		defaultValue = "database\Templates\ControllerMonster.tpl"
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
			defaultValue = "ControllerSpiritHost"
		}

		Variable
		{
			name = "FileDescription"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "GDX1"
		}

	}

	Group
	{
		name = "Spirit Host Parameters"
		type = "list"

		Variable
		{
			name = "spiritThatCanAnimateMe"
			class = "variable"
			type = "file_dbr"
			description = "The spirit that can animate this host"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "numSpiritsToAnimateMe"
			class = "variable"
			type = "int"
			description = "The required amount of spirits before this host can animate"
			value = ""
			defaultValue = ""
		}

	}

}

