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
		defaultValue = "database\Templates\TemplateBase\Skill_Activated.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_Attack.tpl"
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
			defaultValue = "Skill_AttackWave"
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
		name = "Wave Config"
		type = "list"

		Variable
		{
			name = "waveSource"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Source;Target"
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
			name = "waveTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveDepth"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveEffectName"
			class = "variable"
			type = "file_dbr"
			description = "TrailEffect"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lineEffectName"
			class = "variable"
			type = "file_dbr"
			description = "EffectEntity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakName"
			class = "variable"
			type = "file_dbr"
			description = "FxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakExtents"
			class = "variable"
			type = "real"
			description = "Size of FxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakSpawnDistance"
			class = "variable"
			type = "real"
			description = "Distance before new fxPaks are created"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakRandOffsetX"
			class = "variable"
			type = "real"
			description = "FxPak random offset in X/Z"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakRandOffsetY"
			class = "variable"
			type = "real"
			description = "FxPak random offset in -Y"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakRandAngle"
			class = "variable"
			type = "real"
			description = "FxPak random angle offset"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "fxPakAlternate"
			class = "variable"
			type = "bool"
			description = "Alternate direction"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveStartSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waveLoopSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "useTargetDir"
			class = "variable"
			type = "bool"
			description = "Fire in direction of target (true) or forward facing dir (false)"
			value = ""
			defaultValue = "0"
		}

	}

}

