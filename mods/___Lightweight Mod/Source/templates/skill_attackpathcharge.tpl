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
		defaultValue = "database\Templates\TemplateBase\Skill_WarmUp.tpl"
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
			defaultValue = "Skill_AttackPathCharge"
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
			name = "waveDistance"
			class = "variable"
			type = "real"
			description = "Maximum range"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "maxMoveRatio"
			class = "variable"
			type = "real"
			description = "Ratio between absolute and walkable distances"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "endRadiusMultiplier"
			class = "variable"
			type = "real"
			description = "Multiplier for final radius attack at destination point"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "secondarySkillDistance"
			class = "variable"
			type = "real"
			description = "Distance between special secondary skill activation"
			value = ""
			defaultValue = ""
		}

	}

}

