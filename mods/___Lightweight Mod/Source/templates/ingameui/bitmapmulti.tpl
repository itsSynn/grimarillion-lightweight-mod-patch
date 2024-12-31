Group
{
	name = "All Groups"
	type = "list"

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
			defaultValue = "BitmapMulti"
		}

	}

	Group
	{
		name = "Config"
		type = "list"

		Variable
		{
			name = "bitmaps"
			class = "array"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bitmapPositionX"
			class = "variable"
			type = "int"
			description = "Upper Left Corner"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bitmapPositionY"
			class = "variable"
			type = "int"
			description = "Upper Left Corner"
			value = ""
			defaultValue = ""
		}

	}

}

fileNameHistoryEntry
{
	"Templates\InGameUI\Copy of BitmapSingle.tpl"
}
