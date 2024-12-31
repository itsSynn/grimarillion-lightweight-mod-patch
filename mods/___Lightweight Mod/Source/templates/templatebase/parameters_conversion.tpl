Group
{
	name = "All Groups"
	type = "list"

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
			defaultValue = "ParameterStoreOffensive"
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
		name = "Conversion Parameters"
		type = "list"

		Variable
		{
			name = "conversionInType"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Physical;Pierce;Elemental;Cold;Fire;Poison;Lightning;Life;Chaos;Aether;Stun"
		}

		Variable
		{
			name = "conversionOutType"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Physical;Pierce;Elemental;Cold;Fire;Poison;Lightning;Life;Chaos;Aether;Stun"
		}

		Variable
		{
			name = "conversionPercentage"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "conversionInType2"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Physical;Pierce;Elemental;Cold;Fire;Poison;Lightning;Life;Chaos;Aether;Stun"
		}

		Variable
		{
			name = "conversionOutType2"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Physical;Pierce;Elemental;Cold;Fire;Poison;Lightning;Life;Chaos;Aether;Stun"
		}

		Variable
		{
			name = "conversionPercentage2"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

