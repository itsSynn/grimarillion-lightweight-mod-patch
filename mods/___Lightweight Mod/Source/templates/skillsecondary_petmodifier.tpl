Group
{
	name = "All Groups"
	type = "list"

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
			defaultValue = "SkillSecondary_PetModifier"
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
		name = "Pet Modifier"
		type = "list"

		Variable
		{
			name = "petSkillName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "alternateSecondaryPetModifierName"
			class = "variable"
			type = "file_dbr"
			description = "When alternatePetModifierSkill is enabled, load This skill"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "alternatePetModifierSkillName"
			class = "variable"
			type = "file_dbr"
			description = "Skill that modifies the parent pet"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petChanges"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Skill Modifier"
		type = "list"

		Variable
		{
			name = "cooldownTime"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

