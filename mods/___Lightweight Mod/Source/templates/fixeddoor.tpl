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
		defaultValue = "database/templates/doorhookpack.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/templatebase/fixedactor.tpl"
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
			defaultValue = "FixedDoor"
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
		name = "FixedDoor"
		type = "list"

		Variable
		{
			name = "open"
			class = "variable"
			type = "bool"
			description = "Door starts open?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "locked"
			class = "variable"
			type = "bool"
			description = "Door starts locked?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "interaction"
			class = "picklist"
			type = "string"
			description = "Possible interactions"
			value = ""
			defaultValue = "OpenClose;Open;Close"
		}

		Variable
		{
			name = "direction"
			class = "picklist"
			type = "string"
			description = "Side from which interactions are allowed"
			value = ""
			defaultValue = "Any;Front;Back"
		}

		Variable
		{
			name = "autoClose"
			class = "variable"
			type = "bool"
			description = "Automatically close the door after opening"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "autoClosePeriod"
			class = "variable"
			type = "real"
			description = "Time in seconds after which the door automatically closes."
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when door opens"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openLoopSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to loop after door opens"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openAnimation"
			class = "variable"
			type = "file_anm"
			description = "Animation to play when door opens"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openAnimationSpeed"
			class = "variable"
			type = "real"
			description = "Speed at which to play open animation"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "closeSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when door closes"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeAnimation"
			class = "variable"
			type = "file_anm"
			description = "Animation to play when door closes"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeAnimationSpeed"
			class = "variable"
			type = "real"
			description = "Speed at which to play door close animation"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "lockedSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when locked door is used"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lockedTag"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closedEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closedEffectAttachPoint"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

