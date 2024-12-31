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
			defaultValue = "MusicSession"
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
		name = "Sound Properties"
		type = "list"

		Variable
		{
			name = "tracks"
			class = "array"
			type = "file_wav,mp3"
			description = "List of tracks to play"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "randomize"
			class = "variable"
			type = "bool"
			description = "Randomizes the play order"
			value = ""
			defaultValue = "1"
		}

	}

}

