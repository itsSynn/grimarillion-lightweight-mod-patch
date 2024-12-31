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

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_Radius.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_Cast.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Parameters_Character.tpl"
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
			defaultValue = "Skill_AttackRadiusSpin"
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
			name = "timeBetweenAttacks"
			class = "variable"
			type = "int"
			description = "Time between hits to enemies along the path"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "startSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to play when start animation plays"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "loopSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak to loop while loop animation plays"
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
			name = "delayMovement"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

}

