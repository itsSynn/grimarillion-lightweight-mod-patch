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
		defaultValue = "database/templates/templatebase/itembase.tpl"
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
			defaultValue = "ItemNote"
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
		name = "ItemNote"
		type = "list"

		Variable
		{
			name = "noteBitmap"
			class = "variable"
			type = "file_tex"
			description = "Bitmap to show in the UI"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "noteWidth"
			class = "variable"
			type = "int"
			description = "Width of the note when displayed (pixels)"
			value = ""
			defaultValue = "350"
		}

		Variable
		{
			name = "codexTitle"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "experienceBonus"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "subHeading"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "tagCodexJournalSubHeadingDefault"
		}

	}

}

