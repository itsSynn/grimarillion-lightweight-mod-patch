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
		defaultValue = "database/templates/entity.tpl"
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
			defaultValue = "Actor"
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
		name = "Actor Variables"
		type = "list"

		Variable
		{
			name = "description"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "mesh"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "alternateMesh"
			class = "variable"
			type = "file_msh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shader"
			class = "variable"
			type = "file_ssh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "transparentShader"
			class = "variable"
			type = "file_ssh"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "baseTexture"
			class = "variable"
			type = "file_tex"
			description = "Overrides all material ids"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bumpTexture"
			class = "variable"
			type = "file_tex"
			description = "Overrides all material ids"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specTexture"
			class = "variable"
			type = "file_tex"
			description = "Overrides all material ids"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "glowTexture"
			class = "variable"
			type = "file_tex"
			description = "Overrides all material ids"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "baseTextures"
			class = "array"
			type = "file_tex"
			description = "Array position overrides material id"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bumpTextures"
			class = "array"
			type = "file_tex"
			description = "Array position overrides material id"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specTextures"
			class = "array"
			type = "file_tex"
			description = "Array position overrides material id"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "glowTextures"
			class = "array"
			type = "file_tex"
			description = "Array position overrides material id"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "actorRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "actorHeight"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "miniMapEntity"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxTransparency"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "allowTransparency"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "editorTransparency"
			class = "variable"
			type = "real"
			description = "Override for Editor transparency"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "mapNuggetType"
			class = "picklist"
			type = "string"
			description = "Map nugget display type"
			value = ""
			defaultValue = "None;Quest;Boss;Custom;Regular"
		}

		Variable
		{
			name = "mapNuggetCustom"
			class = "variable"
			type = "file_tex"
			description = "Nugget bitmap to show when map nugget type is custom or regular"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "castsShadows"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "shadowBias"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "unloadedBoundingBoxExtents"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "quest"
			class = "variable"
			type = "bool"
			description = "Is this a quest-related object?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "ragdollDecal"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "outlineThickness"
			class = "variable"
			type = "real"
			description = "Thickness of the outline around the actor when selected (in meters)"
			value = ""
			defaultValue = "0.035"
		}

		Variable
		{
			name = "interactIconPosition"
			class = "variable"
			type = "int"
			description = "Additional position adjustment"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Physics"
		type = "list"

		Variable
		{
			name = "collisionShape"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Box;Sphere;Cylinder;Capsule"
		}

		Variable
		{
			name = "physicsMass"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "physicsFriction"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "physicsRestitution"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

}

