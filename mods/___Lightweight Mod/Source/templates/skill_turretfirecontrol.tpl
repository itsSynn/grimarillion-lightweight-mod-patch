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
		defaultValue = "database\Templates\TemplateBase\Skill_Activated.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_ProjectileBase.tpl"
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
			defaultValue = "Skill_TurretFireControl"
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
			name = "skillProjectileName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillActiveDuration"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Turret Config"
		type = "list"

		Variable
		{
			name = "numToFire"
			class = "variable"
			type = "int"
			description = "how many turrets to fire. -1 for ALL"
			value = ""
			defaultValue = "-1"
		}

		Variable
		{
			name = "specialSkillNum"
			class = "variable"
			type = "int"
			description = "Special skill number (1-5) to use, if blank uses default attack"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "findClosest"
			class = "variable"
			type = "bool"
			description = "use the closest turret(s) to caster"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "targetCharacter"
			class = "variable"
			type = "bool"
			description = "true = target a specific character or location | false = shoot in front of turret"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "searchRadius"
			class = "variable"
			type = "real"
			description = "radius to search for turrets"
			value = ""
			defaultValue = "20.0"
		}

		Variable
		{
			name = "turretName"
			class = "variable"
			type = "file_dbr"
			description = "Specific turret to control or blank for any turrets"
			value = ""
			defaultValue = ""
		}

	}

}

