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
			defaultValue = "Skill_AttackSpellCone"
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
			name = "coneName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxRange"
			class = "array"
			type = "real"
			description = "Maximum range of the cone (in meters)"
			value = ""
			defaultValue = "20"
		}

		Variable
		{
			name = "startWidth"
			class = "array"
			type = "real"
			description = "Starting radius of cone"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "endWidth"
			class = "array"
			type = "real"
			description = "Ending radius of cone"
			value = ""
			defaultValue = "2"
		}

		Variable
		{
			name = "timeBetweenAttacks"
			class = "variable"
			type = "int"
			description = "Time between hits being to enemies in the cone (in milliseconds)"
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "startSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when a cone starts"
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
			description = "SoundPak to play when a cone ends"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "coneDelay"
			class = "variable"
			type = "real"
			description = "Delay before the cone starts (seconds)"
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
			name = "rotationSpeedMultiplier"
			class = "variable"
			type = "real"
			description = "Multiplier applied to player rotation speed while skill is active"
			value = ""
			defaultValue = "1.0"
		}

	}

}

