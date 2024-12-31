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
			defaultValue = "Skill_AttackSpellDrain"
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
			name = "chaosBeamName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "secondaryBeamName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
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
			name = "maxRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "newBeamDelay"
			class = "variable"
			type = "int"
			description = "Time new beam will be delayed (in milliseconds)"
			value = ""
			defaultValue = "50"
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
			name = "endSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a beam ends"
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
			description = "Head of the beam velocity in meters per second"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tailTravelSpeed"
			class = "variable"
			type = "real"
			description = "Tail of the beam velocity in meters per second"
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

		Variable
		{
			name = "skillTargetRadius"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "sparkMaxNumber"
			class = "array"
			type = "int"
			description = "Max number of targets"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "sparkChance"
			class = "array"
			type = "real"
			description = "Chance of splitting"
			value = ""
			defaultValue = ""
		}

	}

}

