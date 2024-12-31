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
		defaultValue = "database\templates\actor.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\templates\monsterspawner.tpl"
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
			defaultValue = "MonsterPortal"
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
		name = "MonsterPortal"
		type = "list"

		Variable
		{
			name = "dormantEffect"
			class = "variable"
			type = "file_dbr"
			description = "Effect to loop while dormat"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to loop while dormant"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeEffect"
			class = "variable"
			type = "file_dbr"
			description = "Effect to loop while active"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to loop while active"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when the portal opens"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play then the portal closes"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnTime"
			class = "picklist"
			type = "string"
			description = "Time of day at which the portal spawns"
			value = ""
			defaultValue = "Always;Day;Night"
		}

		Variable
		{
			name = "resetOnChange"
			class = "variable"
			type = "bool"
			description = "If true then the number of charges are reset during day/night transitions"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "portalEnabled"
			class = "variable"
			type = "bool"
			description = "True if this portal is operational"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "showInMinimap"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\New Template.tpl"
}
