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
		defaultValue = "database\Templates\TemplateBase\ItemBase.tpl"
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
			defaultValue = "ItemDifficultyUnlock"
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
		name = "Difficulty Unlock"
		type = "list"

		Variable
		{
			name = "difficultyUnlocked"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Normal;Elite;Ultimate"
		}

		Variable
		{
			name = "gameMode"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Campaign;Survival"
		}

		Variable
		{
			name = "statQuests"
			class = "array"
			type = "string"
			description = "Quests that reward skill/attribute points"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "useSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

