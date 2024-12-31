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
		defaultValue = "database\Templates\AttributePak.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\ItemSkillAugment.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\ItemSkillModifiers.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\PetBonusInc.tpl"
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
			defaultValue = ""
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
		name = "Config"
		type = "list"

		Variable
		{
			name = "setName"
			class = "variable"
			type = "string"
			description = "tag"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "setDescription"
			class = "variable"
			type = "string"
			description = "tag"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "setMembers"
			class = "array"
			type = "file_dbr"
			description = "max pieces"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemLevel"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Skill Augment"
		type = "list"

		Variable
		{
			name = "itemSkillLevel"
			class = "array"
			type = "int"
			description = "Determines on/off (1/0) of itemSkill"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Pet Bonus"
		type = "list"

		Variable
		{
			name = "petBonusLevel"
			class = "array"
			type = "int"
			description = "Determines on/off (1/0) of petBonus"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Skill Modifiers"
		type = "list"

		Variable
		{
			name = "itemSkillModifierControl"
			class = "array"
			type = "int"
			description = "Determines on/off (1/0) of skill modifiers"
			value = ""
			defaultValue = ""
		}

	}

}

