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
		defaultValue = "database\Templates\TemplateBase\Skill_Attack.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_Secondary.tpl"
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
			defaultValue = "SkillSecondary_Tether"
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
			name = "tetherName"
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
			name = "timeBetweenAttacks"
			class = "variable"
			type = "int"
			description = "Time between hits being to enemies in the tether (in milliseconds)"
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "tetherDelay"
			class = "variable"
			type = "real"
			description = "Delay before the tether starts (seconds)"
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "tetherDuration"
			class = "variable"
			type = "real"
			description = "Tether duration (seconds)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "tetherThickness"
			class = "variable"
			type = "real"
			description = "Tether thickness for collision detection"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "tetherLimit"
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
			name = "hurtsTarget"
			class = "variable"
			type = "bool"
			description = "tether can damage attached target"
			value = ""
			defaultValue = "0"
		}

	}

}

