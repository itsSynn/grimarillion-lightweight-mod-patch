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
		defaultValue = "database\Templates\ProjectileFireballLike.tpl"
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
			defaultValue = "ProjectileSpark"
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
		name = "Projectile Config"
		type = "list"

		Variable
		{
			name = "projectileDuration"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "changeDirectionTime"
			class = "variable"
			type = "real"
			description = "Seconds before projectile direction changes"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minRotation"
			class = "variable"
			type = "real"
			description = "Degrees"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxRotation"
			class = "variable"
			type = "real"
			description = "Degrees"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "disableCollision"
			class = "variable"
			type = "bool"
			description = "Disables terrain collision"
			value = ""
			defaultValue = ""
		}

	}

}

