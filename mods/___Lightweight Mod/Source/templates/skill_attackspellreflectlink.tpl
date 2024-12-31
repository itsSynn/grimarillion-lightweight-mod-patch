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
			defaultValue = "Skill_AttackSpellReflectLink"
		}

		Variable
		{
			name = "FileDescription"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = "GDX1"
		}

	}

	Group
	{
		name = "Skill Config"
		type = "list"

		Variable
		{
			name = "linkName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxRange"
			class = "variable"
			type = "real"
			description = "Maximum range of the tether (in meters)"
			value = ""
			defaultValue = "20"
		}

		Variable
		{
			name = "linkDelay"
			class = "variable"
			type = "real"
			description = "Delay before the link starts (seconds)"
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "skillActiveDuration"
			class = "array"
			type = "real"
			description = "Link duration (seconds)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "linkLimit"
			class = "variable"
			type = "int"
			description = "Amount of simultaneous tethers"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "startSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a tether starts"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "loopSound"
			class = "variable"
			type = "file_dbr"
			description = "Looping SoundPak to play while a tether is active"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "endSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a tether ends"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "startEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "endEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "damageAbsorptionReflectPercent"
			class = "array"
			type = "real"
			description = "Percent of absorbed damage reflected back at link target"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "damageAbsorptionPercent"
			class = "array"
			type = "real"
			description = "Percent incoming damage is reduced"
			value = ""
			defaultValue = ""
		}

	}

}

