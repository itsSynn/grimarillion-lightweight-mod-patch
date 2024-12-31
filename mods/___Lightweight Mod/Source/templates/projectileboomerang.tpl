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
		defaultValue = "database/templates/projectilefireballlike.tpl"
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
			defaultValue = "ProjectileBoomerang"
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
		name = "Projectile Config"
		type = "list"

		Variable
		{
			name = "projectileTravelDistance"
			class = "variable"
			type = "real"
			description = "Distance to travel before return"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileHoverDuration"
			class = "variable"
			type = "real"
			description = "Time to pause at max distance (in seconds)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileFollowDuration"
			class = "variable"
			type = "real"
			description = "If follows owner on return, max duration to follow (in seconds)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileFollow"
			class = "variable"
			type = "bool"
			description = "Projectile follows the owner on return"
			value = ""
			defaultValue = "0"
		}

	}

}

