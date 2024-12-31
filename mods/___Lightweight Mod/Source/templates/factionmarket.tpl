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
		name = "Market Config"
		type = "list"

		Variable
		{
			name = "marketCostAdjustment"
			class = "variable"
			type = "real"
			description = "Percent +-"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "marketDepreciation"
			class = "variable"
			type = "real"
			description = "Percent"
			value = ""
			defaultValue = "20"
		}

		Variable
		{
			name = "marketRefreshTimeMin"
			class = "variable"
			type = "real"
			description = "Minutes"
			value = ""
			defaultValue = "5"
		}

		Variable
		{
			name = "marketRefreshTimeMax"
			class = "variable"
			type = "real"
			description = "Minutes"
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "maxPlayerPurchase"
			class = "array"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Market Tables"
		type = "list"

		Group
		{
			name = "Normal"
			type = "list"

			Variable
			{
				name = "friendlyNormalTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "respectedNormalTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "honoredNormalTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "reveredNormalTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

	}

}

