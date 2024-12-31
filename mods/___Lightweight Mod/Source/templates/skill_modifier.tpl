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
		defaultValue = "database\Templates\TemplateBase\Skill_Base.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_PassiveModifier.tpl"
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
			defaultValue = "Skill_Modifier"
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
		name = "Modifiers"
		type = "list"

		Variable
		{
			name = "skillManaCost"
			class = "array"
			type = "real"
			description = "Activated Skills Only"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillCooldownTime"
			class = "array"
			type = "real"
			description = "Activated Skills Only"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "cooldownCharges"
			class = "array"
			type = "int"
			description = "Activated Skills Only"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillActiveDuration"
			class = "array"
			type = "real"
			description = "Timed Skills"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillTargetRadius"
			class = "array"
			type = "real"
			description = "Radius and Projectiles"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillActiveLifeCost"
			class = "array"
			type = "real"
			description = "Self Buff Toggled Only"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillActiveManaCost"
			class = "array"
			type = "real"
			description = "Self Buff Toggled Only"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillTargetAngle"
			class = "array"
			type = "real"
			description = "Melee Radius config"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillTargetNumber"
			class = "array"
			type = "int"
			description = "Melee Radius config"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveStartWidth"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveEndWidth"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveDistance"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "damageAbsorptionPercent"
			class = "array"
			type = "real"
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
			name = "projectileOverride"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileLaunchRotation"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileLaunchNumber"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectilePiercing"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "explosionRadius"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileAngle"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileFragmentsOverride"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Skill Effects"
		type = "list"

		Variable
		{
			name = "charFxPakOtherNames"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak when modifier is attached to a buff other skill "
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "charFxPakSelfNames"
			class = "array"
			type = "file_dbr"
			description = "CharFxPak when modifier is attached to a buff self skill"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxChanges"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "warmUpEffectName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "warmUpEffectAttachPoint"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "R Hand;L Hand;Upper Body;Lower Body;Head;Forearm;Particle1;Particle2;Particle3;"
		}

		Variable
		{
			name = "targetFxPakOverride"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveEffectOverride"
			class = "variable"
			type = "file_dbr"
			description = "Wave skill effect"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lineEffectOverride"
			class = "variable"
			type = "file_dbr"
			description = "Wave skill effect"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveFxPakOverride"
			class = "variable"
			type = "file_dbr"
			description = "Wave skill effect"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "particleEffect1Override"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "particleEffect2Override"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "particleEffect3Override"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lightningOverride"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Spawn Config"
		type = "list"

		Variable
		{
			name = "modSpawnObjects"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "modSpawnObjects2"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "modSpawnObjects3"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "modSpawnObjects4"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnObjectsTimeToLive"
			class = "array"
			type = "real"
			description = "seconds"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petLimit"
			class = "array"
			type = "int"
			description = "max number of pets alive at any given time"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "petBurstSpawn"
			class = "array"
			type = "int"
			description = "number of pets spawned when skill is activated"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Spark Config"
		type = "list"

		Variable
		{
			name = "sparkGap"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "sparkChance"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "sparkMaxNumber"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Bonus"
		type = "list"

		Variable
		{
			name = "skillLifeBonus"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillLifePercent"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillManaBonus"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillManaPercent"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Qualifying Weapons"
		type = "list"

		Variable
		{
			name = "overwriteBaseSkill"
			class = "variable"
			type = "bool"
			description = "Overwrites base skill qualifying weapons"
			value = ""
			defaultValue = "0"
		}

	}

}

