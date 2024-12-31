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
			defaultValue = "ProjectileOrbiting"
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
			name = "projectileStartDistance"
			class = "variable"
			type = "real"
			description = "Distance from owner when launched"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileOrbitRate"
			class = "variable"
			type = "real"
			description = "Speed at which projectile orbits (degrees/sec)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileFollow"
			class = "variable"
			type = "bool"
			description = "Projectile follows the owner"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileDuration"
			class = "variable"
			type = "real"
			description = "Time to live (seconds)"
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "disableCollision"
			class = "variable"
			type = "bool"
			description = "Disables terrain collision"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "inverse"
			class = "variable"
			type = "bool"
			description = "Stop projectile when it reaches owner"
			value = ""
			defaultValue = "0"
		}

	}

}

