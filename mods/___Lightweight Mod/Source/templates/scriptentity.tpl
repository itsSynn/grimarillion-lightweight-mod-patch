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
		defaultValue = "database/templates/entity.tpl"
	}

	Group
	{
		name = "ScriptEntity"
		type = "list"

		Variable
		{
			name = "editorMesh"
			class = "variable"
			type = "file_msh"
			description = "Mesh to show in the editor."
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "editorScale"
			class = "variable"
			type = "real"
			description = "Mesh scale factor."
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "pathing"
			class = "variable"
			type = "bool"
			description = "True if the specified mesh should affect pathing"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "cacheObjects"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

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
			defaultValue = "ScriptEntity"
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

}

