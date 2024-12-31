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
		name = "ConversationWindow"
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
			name = "objBgColor.R"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "objBgColor.G"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "objBgColor.B"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "objBgColor.A"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "128"
		}

		Variable
		{
			name = "nameBox"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "textBox"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeButton"
			class = "variable"
			type = "file_dbr"
			description = "UIButton"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "gamepadCloseButton"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "gamepadCloseLabel"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "optionStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "acceptBitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "declineBitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "continueBitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "endBitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "autosplit"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "750"
		}

		Variable
		{
			name = "optionSpacing"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "sectionSpacing"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "hoverColor.R"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "255"
		}

		Variable
		{
			name = "hoverColor.G"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "255"
		}

		Variable
		{
			name = "hoverColor.B"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "64"
		}

		Variable
		{
			name = "hoverColor.A"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "64"
		}

		Variable
		{
			name = "questOverview"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "portrait"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "portraitAngle"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "rolloverStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rolloverTextStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rolloverTitleStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Border"
		type = "list"

		Variable
		{
			name = "objUpperLeftTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objLowerLeftTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objUpperRightTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objLowerRightTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objTopTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objBottomTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objLeftTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objRightTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

