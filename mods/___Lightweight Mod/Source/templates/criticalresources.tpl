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
			defaultValue = "CriticalResources"
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
		name = "CriticalResources"
		type = "list"

		Variable
		{
			name = "textures"
			class = "array"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shaders"
			class = "array"
			type = "file_ssh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "sounds"
			class = "array"
			type = "file_snd"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fonts"
			class = "array"
			type = "file_fnt"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

