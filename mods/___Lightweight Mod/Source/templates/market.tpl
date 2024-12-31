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
			description = "Per Difficulty"
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
			name = "Weapons"
			type = "list"

			Variable
			{
				name = "marketNumAxeMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumAxeMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketAxeTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumSwordMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumSwordMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketSwordTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumMaceMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumMaceMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketMaceTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumDaggerMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumDaggerMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketDaggerTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumScepterMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumScepterMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketScepterTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumRanged1hMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumRanged1hMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketRanged1hTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumRanged2hMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumRanged2hMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketRanged2hTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumStaffMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumStaffMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketStaffTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumSpearMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumSpearMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketSpearTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

		Group
		{
			name = "Armor"
			type = "list"

			Variable
			{
				name = "marketNumChestMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumChestMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketChestTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumLegsMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumLegsMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketLegsTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumHeadMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumHeadMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketHeadTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumHandsMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumHandsMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketHandsTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumFeetMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumFeetMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketFeetTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumWaistMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumWaistMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketWaistTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumShouldersMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumShouldersMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketShouldersTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumShieldMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumShieldMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketShieldTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

		Group
		{
			name = "Misc"
			type = "list"

			Variable
			{
				name = "marketNumPotionMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumPotionMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketPotionTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumRingMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumRingMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketRingTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumAmuletMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumAmuletMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketAmuletTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumMedalMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumMedalMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketMedalTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumScrollMin"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumScrollMax"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketNumScrollDuplicates"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "marketScrollTable"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

	}

}

