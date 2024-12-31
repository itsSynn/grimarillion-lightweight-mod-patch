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
		defaultValue = "database\Templates\SkillChanneled.tpl"
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
			defaultValue = "Skill_AttackSpellBeam"
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
		name = "Skill Config"
		type = "list"

		Variable
		{
			name = "beamName"
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
			description = "Maximum range of the beam (in meters)"
			value = ""
			defaultValue = "20"
		}

		Variable
		{
			name = "passThrough"
			class = "variable"
			type = "bool"
			description = "Does the beam pass through monsters?"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "timeBetweenAttacks"
			class = "variable"
			type = "int"
			description = "Time between hits being to enemies in the beam (in milliseconds)"
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "startSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a beam starts"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "loopSound"
			class = "variable"
			type = "file_dbr"
			description = "Looping SoundPak to play while a beam is active"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "beamDelay"
			class = "variable"
			type = "real"
			description = "Delay before the beam starts (seconds)"
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "beamThickness"
			class = "variable"
			type = "real"
			description = "Thickness around beam to search for targets"
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
			name = "travelSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "groundEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "groundSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotationSpeedMultiplier"
			class = "variable"
			type = "real"
			description = "Multiplier applied to player rotation speed while skill is active"
			value = ""
			defaultValue = "1.0"
		}

	}

}

