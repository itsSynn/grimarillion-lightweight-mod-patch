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
		defaultValue = "database\Templates\Actor.tpl"
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
		name = "Projectile Config"
		type = "list"

		Variable
		{
			name = "projectileDistance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileHitTTLMin"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileHitTTLMax"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileMissTTLMin"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "projectileMissTTLMax"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "notificationRadius"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "collidesWithProjectiles"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "projectileScaleFactor"
			class = "variable"
			type = "real"
			description = "Projectile increases in scale as it travels"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Projectile Sounds"
		type = "list"

		Variable
		{
			name = "projectileSwipeSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileHitSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileExplodingHitSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Projectile Effects"
		type = "list"

		Variable
		{
			name = "projectileFlightFX"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileImpactFX"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileLaunchAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileLaunchAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "projectileFlightAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileFlightAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "projectileWeaponTrail"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

