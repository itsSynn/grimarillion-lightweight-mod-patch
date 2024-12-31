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
			defaultValue = "DynamicTeleporter"
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
		name = "Dynamic Teleporter"
		type = "list"

		Variable
		{
			name = "description"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "radius"
			class = "variable"
			type = "real"
			description = "Pathing radius of the teleporter"
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "dormantEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeDisturbance"
			class = "variable"
			type = "file_dbr"
			description = "PointDisturbance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "active"
			class = "variable"
			type = "bool"
			description = "True if teleporter should start active"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "activationTime"
			class = "variable"
			type = "real"
			description = "Time in seconds after which the portal activates, or zero if activation isn't time based. Set active to false if using this."
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "resetTargetLevel"
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
	"Templates\Copy of StaticTeleporter.tpl"
}
