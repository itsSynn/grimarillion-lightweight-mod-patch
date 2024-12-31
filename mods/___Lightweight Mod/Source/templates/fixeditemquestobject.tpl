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
		defaultValue = "database\Templates\Actor.tpl"
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
			defaultValue = "FixedItemQuestObject"
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
			name = "closedAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closedAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "closedSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closedFxPakName"
			class = "variable"
			type = "file_dbr"
			description = "FxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "openSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openFxPakName"
			class = "variable"
			type = "file_dbr"
			description = "FxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "locked"
			class = "static"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "pathableWhenOpen"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "useAction"
			class = "picklist"
			type = "string"
			description = "Fade/dissolve/delete the item on use?"
			value = ""
			defaultValue = "Keep;Fade;Dissolve;Delete"
		}

		Variable
		{
			name = "useActionDelay"
			class = "variable"
			type = "real"
			description = "Time before on removeOnUse action occurs in seconds"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "useActionTime"
			class = "variable"
			type = "real"
			description = "Time to fade out/dissolve the object if applicable"
			value = ""
			defaultValue = "3.0"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\Copy of FixedItemTeleport.tpl"
}
