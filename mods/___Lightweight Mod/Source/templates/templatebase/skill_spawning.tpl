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
			defaultValue = ""
		}

	}

	Group
	{
		name = "Spawn Config"
		type = "list"

		Variable
		{
			name = "spawnObjects"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjectWeights"
			class = "array"
			type = "int"
			description = "optional weighted spawn control"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjects2"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjectWeights2"
			class = "array"
			type = "int"
			description = "optional weighted spawn control"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjects3"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjectWeights3"
			class = "array"
			type = "int"
			description = "optional weighted spawn control"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjects4"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjectWeights4"
			class = "array"
			type = "int"
			description = "optional weighted spawn control"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "trackSpawns"
			class = "variable"
			type = "bool"
			description = "spawned number tracked on the HUD"
			value = ""
			defaultValue = "0"
		}

	}

}

