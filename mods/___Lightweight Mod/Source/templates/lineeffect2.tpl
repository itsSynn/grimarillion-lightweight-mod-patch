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
			defaultValue = "LineEffect2"
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
		name = "LineEffect2"
		type = "list"

		Variable
		{
			name = "color.r"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "color.g"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "color.b"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "color.a"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "texture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shader"
			class = "variable"
			type = "file_ssh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lineWidth"
			class = "variable"
			type = "real"
			description = "Width of the beam in meters"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "textureLength"
			class = "variable"
			type = "real"
			description = "Length of the beam per texture repeat in meters"
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "textureSpeed"
			class = "variable"
			type = "real"
			description = "Speed at which the  texture moves along the beam in meters/second"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "endAlpha"
			class = "variable"
			type = "real"
			description = "Alpha value at the ends of the beam (zero to one)."
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "fadeDistance"
			class = "variable"
			type = "real"
			description = "Distance over which alpha fades at the ends of the beam (meters)"
			value = ""
			defaultValue = "1.0"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\Copy of Lightning2.tpl"
}
