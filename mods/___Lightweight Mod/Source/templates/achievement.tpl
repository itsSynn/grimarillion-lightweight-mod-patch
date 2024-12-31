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
		name = "Achievement"
		type = "list"

		Variable
		{
			name = "id"
			class = "variable"
			type = "string"
			description = "Achievement Identifier"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "type"
			class = "picklist"
			type = "string"
			description = "Achievement Type"
			value = ""
			defaultValue = "Unlock;Token;Kill;Stat;Faction"
		}

		Variable
		{
			name = "title"
			class = "variable"
			type = "string"
			description = "Title Tag"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "description"
			class = "variable"
			type = "string"
			description = "Description Tag"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lockedIcon"
			class = "variable"
			type = "file_tex"
			description = "Achievement icon when locked"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "unlockedIcon"
			class = "variable"
			type = "file_tex"
			description = "Achievement icon when unlocked"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "hidden"
			class = "variable"
			type = "bool"
			description = "Hidden Until Unlocked?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "xb1"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Kill"
		type = "list"

		Variable
		{
			name = "killDbrs"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "killCount"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "killDifficulty"
			class = "variable"
			type = "int"
			description = "0=Normal;1=Veteran;2=Elite;3=Ultimate"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "killHardcore"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Token"
		type = "list"

		Variable
		{
			name = "tokenName"
			class = "array"
			type = "string"
			description = "If player has one of these tokens (OR'ed), achievement is unlocked."
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Stat"
		type = "list"

		Variable
		{
			name = "statName"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "statCount"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillNames"
			class = "array"
			type = "file_dbr"
			description = "(SKILL_TRACKING) Associated skills, if any"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "requiresAll"
			class = "variable"
			type = "bool"
			description = "If true, requires all associated skills at statCount or above"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Faction"
		type = "list"

		Variable
		{
			name = "factionNames"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionCount"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionValue"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

