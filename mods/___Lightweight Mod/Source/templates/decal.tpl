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
			defaultValue = "Decal"
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
		name = "Decal Properties"
		type = "list"

		Variable
		{
			name = "width"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "height"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "texture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bumpTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "variantsOnTexture"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "variantIndex"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "shader"
			class = "variable"
			type = "file_ssh"
			description = ""
			value = ""
			defaultValue = "Shaders\Effects\DecalCombine.ssh"
		}

		Variable
		{
			name = "life"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "fadeIn"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "fadeAfter"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "period"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "minOpacity"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxOpacity"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "terrainOnly"
			class = "variable"
			type = "bool"
			description = "If true, geometry is not collected from entities."
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "rotate"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxAngle"
			class = "variable"
			type = "real"
			description = "Maximum face angle  to use when collecting geometry (0 = up)"
			value = ""
			defaultValue = "90"
		}

	}

}

