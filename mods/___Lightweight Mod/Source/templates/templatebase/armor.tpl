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
		defaultValue = "database\Templates\TemplateBase\ItemEquipment.tpl"
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
		name = "Armor Parameters"
		type = "list"

		Variable
		{
			name = "armorMaleMesh"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorMaleBaseTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorMaleBumpTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorFemaleMesh"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorFemaleBaseTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorFemaleBumpTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorNativeMesh"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorNativeBumpTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorNativeBaseTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorSatyrMeshName"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorSatyrBaseTextureName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorSatyrBumpTextureName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorJackalManMeshName"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorJackalManBaseTextureName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorJackalManBumpTextureName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorTigermanMeshName"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorTigermanBaseTextureName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorTigermanBumpTextureName"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Armor Sound"
		type = "list"

		Variable
		{
			name = "blockSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "impactSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

