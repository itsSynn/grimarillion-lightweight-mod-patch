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
			defaultValue = "Skill_AttackProjectileBurst"
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
			name = "skillProjectileName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileLaunchRotation"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileLaunchNumber"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "projectileUsesAllDamage"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileDamageRange1Min"
			class = "variable"
			type = "real"
			description = "Greater than distance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange1Max"
			class = "variable"
			type = "real"
			description = "Less than or equal to distance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange1Scale"
			class = "variable"
			type = "int"
			description = "Percent scale"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange2Min"
			class = "variable"
			type = "real"
			description = "Greater than distance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange2Max"
			class = "variable"
			type = "real"
			description = "Less than or equal to distance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange2Scale"
			class = "variable"
			type = "int"
			description = "Percent scale"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange3Min"
			class = "variable"
			type = "real"
			description = "Greater than distance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange3Max"
			class = "variable"
			type = "real"
			description = "Less than or equal to distance"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileDamageRange3Scale"
			class = "variable"
			type = "int"
			description = "Percent scale"
			value = ""
			defaultValue = ""
		}

	}

}

