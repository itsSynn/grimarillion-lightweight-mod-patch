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
		defaultValue = "database\Templates\InGameUI\Includes\Border.tpl"
	}

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
		name = "NetworkAddressWindow"
		type = "list"

		Variable
		{
			name = "bgColor.R"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "bgColor.G"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "bgColor.B"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "bgColor.A"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "128"
		}

		Variable
		{
			name = "serverNameBox"
			class = "variable"
			type = "file_dbr"
			description = "UITextString"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "ipAddressBox"
			class = "variable"
			type = "file_dbr"
			description = "UITextString"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "portBox"
			class = "variable"
			type = "file_dbr"
			description = "UITextString"
			value = ""
			defaultValue = ""
		}

	}

}

