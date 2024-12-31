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
		defaultValue = "database/templates/skill_attackprojectile.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/templatebase/skill_secondary.tpl"
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
			defaultValue = "SkillSecondary_AttackProjectileOrbiting"
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
			name = "projectilePeriod"
			class = "variable"
			type = "real"
			description = "Delay between projectile launches (seconds)."
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "projectileDirection"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Clockwise;Counterclockwise;Alternate;Random"
		}

		Variable
		{
			name = "projectileStart"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Front;Randomize"
		}

	}

}

