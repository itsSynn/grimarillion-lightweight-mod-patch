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
			defaultValue = "ProjectileInverse"
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
			name = "projectileStartDistance"
			class = "variable"
			type = "real"
			description = "Distance from owner when launched"
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

	}

}

