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
			defaultValue = "ChatterPack"
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
		name = "Config"
		type = "list"

		Variable
		{
			name = "updatePeriod"
			class = "variable"
			type = "real"
			description = "Time in seconds between checks for nearby characters (higher values are better for performance)"
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "minChatterPeriod"
			class = "variable"
			type = "real"
			description = "Minimum time to wait between chatter (seconds)"
			value = ""
			defaultValue = "30"
		}

		Variable
		{
			name = "maxChatterPeriod"
			class = "variable"
			type = "real"
			description = "Maximum time to wait between chatter (seconds)"
			value = ""
			defaultValue = "60"
		}

		Variable
		{
			name = "detectionRadius"
			class = "variable"
			type = "real"
			description = "Radius in which to detect characters (in meters, larger values result in slower processing)"
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "regreetOnFactionChange"
			class = "variable"
			type = "bool"
			description = "Regreet anyone who comes back with a different faction than what we remember?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "detectPlayers"
			class = "picklist"
			type = "string"
			description = "Detect players?"
			value = ""
			defaultValue = "Never;My Faction;Always"
		}

		Variable
		{
			name = "detectMonsters"
			class = "picklist"
			type = "string"
			description = "Detect monsters?"
			value = ""
			defaultValue = "Never;My Faction;Always"
		}

		Variable
		{
			name = "detectOthers"
			class = "picklist"
			type = "string"
			description = "Detect others? (npcs, etc)"
			value = ""
			defaultValue = "Never;My Faction;Always"
		}

		Variable
		{
			name = "simpleGreetings"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "simpleExclamations"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Speech"
		type = "list"

		Variable
		{
			name = "victoryExclamations"
			class = "array"
			type = "string"
			description = "Tags to speak when I kill an opponent"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "victoryExclamationChances"
			class = "array"
			type = "int"
			description = "Absolute percentage chance to use each tag"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defeatExclamations"
			class = "array"
			type = "string"
			description = "Tags to speak when I am killed"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defeatExclamationChances"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "randomExclamations"
			class = "array"
			type = "string"
			description = "Random exclamations are used when nothing is going on"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "randomExclamationChances"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Faction Speech"
		type = "list"

		Variable
		{
			name = "exclamations1"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances1"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations2"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances2"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations3"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances3"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations4"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances4"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations5"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances5"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations6"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances6"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations7"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances7"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations8"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances8"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations9"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances9"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations10"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances10"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exclamations11"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "exChances11"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings1"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances1"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings2"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances2"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings3"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances3"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings4"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances4"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings5"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances5"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings6"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances6"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings7"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances7"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings8"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances8"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings9"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances9"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings10"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances10"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "greetings11"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "grChances11"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

