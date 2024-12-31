Group
{
	name = "All Groups"
	type = "list"

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Proxy"
		value = ""
		defaultValue = "charLevel"
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
		name = "Config"
		type = "list"

		Variable
		{
			name = "characterStrength"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel*5)+25"
		}

		Variable
		{
			name = "characterDexterity"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel*5)+25"
		}

		Variable
		{
			name = "characterIntelligence"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel*5)+25"
		}

		Variable
		{
			name = "characterLife"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel^2)+10"
		}

		Variable
		{
			name = "characterMana"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel^2)+10"
		}

		Variable
		{
			name = "characterLifeRegen"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel/2)+(ownLevel/20)"
		}

		Variable
		{
			name = "characterManaRegen"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "(ownLevel)+(ownLevel/20)"
		}

		Variable
		{
			name = "characterOffensiveAbility"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "ownLevel*2"
		}

		Variable
		{
			name = "characterDefensiveAbility"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "ownLevel*1.5"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\Copy of ProxyLevelVarianceEquation.tpl"
}
