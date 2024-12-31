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
		defaultValue = "database\Templates\TemplateBase\Skill_Base.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_Activated.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_Spawning.tpl"
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
			defaultValue = "Skill_DefensiveLine"
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
			name = "pointBlank"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "spawnDirection"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "X;Z"
		}

		Variable
		{
			name = "spawnObjectsTimeToLive"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "spawnObjectsCount"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = "4"
		}

		Variable
		{
			name = "spawnObjectsDistance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "spawnObjectsSpacing"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "2"
		}

	}

	Group
	{
		name = "Skill Sound"
		type = "list"

		Variable
		{
			name = "skillDeactivatedSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

