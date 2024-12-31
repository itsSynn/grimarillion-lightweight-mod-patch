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
		defaultValue = "database/templates/interactablehookpack.tpl"
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
			defaultValue = "FixedLever"
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
		name = "FixedLever"
		type = "list"

		Variable
		{
			name = "open"
			class = "variable"
			type = "bool"
			description = "Starts open?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "locked"
			class = "variable"
			type = "bool"
			description = "Starts locked?"
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
			name = "autoClose"
			class = "variable"
			type = "bool"
			description = "Automatically close after opening"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "autoClosePeriod"
			class = "variable"
			type = "real"
			description = "Time in seconds after which automatically closed"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when opening"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openAnimation"
			class = "variable"
			type = "file_anm"
			description = "Animation to play when opening"
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
			description = "Sound to play when closing"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeAnimation"
			class = "variable"
			type = "file_anm"
			description = "Animation to play when closing"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeAnimationSpeed"
			class = "variable"
			type = "real"
			description = "Speed at which to play close animation"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "lockedSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when used if locked"
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

	}

}

