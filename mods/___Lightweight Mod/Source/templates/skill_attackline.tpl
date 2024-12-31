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
			defaultValue = "Skill_AttackLine"
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
		name = "Config"
		type = "list"

		Variable
		{
			name = "distance"
			class = "variable"
			type = "real"
			description = "Distance the attack travels (meters)"
			value = ""
			defaultValue = "5"
		}

		Variable
		{
			name = "time"
			class = "variable"
			type = "real"
			description = "Time taken to travel the distance (seconds)"
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "trailEffect"
			class = "variable"
			type = "file_dbr"
			description = "The trail effect - TrailEffect.tpl"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "effectEntity"
			class = "variable"
			type = "file_dbr"
			description = "The main effect - EffectEntity.tpl"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "startSound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to play when attack starts"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "loopSound"
			class = "variable"
			type = "file_dbr"
			description = "Looping sound to play as the attack moves"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "attackRadius"
			class = "variable"
			type = "real"
			description = "Radius in which enemies are damaged"
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "hitPeriod"
			class = "variable"
			type = "real"
			description = "Time between hits (seconds)"
			value = ""
			defaultValue = "0.1"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\Copy of Skill_AttackWave.tpl"
}
