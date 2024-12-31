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
			defaultValue = "AreaTrigger"
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
		name = "AreaTrigger"
		type = "list"

		Variable
		{
			name = "detects"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "LocalPlayer;Players;AnyEntity;Monsters"
		}

		Variable
		{
			name = "detectableNames"
			class = "array"
			type = "file_dbr"
			description = "Array of dbrs which the trigger detects"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "updatePeriod"
			class = "variable"
			type = "real"
			description = "Time between detection updates (seconds)"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "resetPeriod"
			class = "variable"
			type = "real"
			description = "Time after triggering before the trigger can be retriggered (seconds, 0 = once only, negative = always trigger)"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "shouldTrigger"
			class = "variable"
			type = "string"
			description = "Lua function to evaluate to determine if an object should activate the trigger [bool shouldTrigger(objectId)] -optional"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "onEnter"
			class = "variable"
			type = "string"
			description = "Lua function to execute when an object enters the bounds [void onEnter(objectId)] -optional"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "onLeave"
			class = "variable"
			type = "string"
			description = "Lua function to execute when an object leaves the bounds [void onLeave(objectId)] -optional"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "onInside"
			class = "variable"
			type = "string"
			description = "Lua function to execute when an object is inside the bounds [void onInside(objectId)] -optional"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "enabled"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "singular"
			class = "variable"
			type = "bool"
			description = "If true then only one entity entering the bounds during an update can fire the trigger"
			value = ""
			defaultValue = "1"
		}

	}

}

