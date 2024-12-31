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
		defaultValue = "database/templates/actor.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/proxyhookpack.tpl"
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
			defaultValue = "Proxy"
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
		name = "Proxy Config"
		type = "list"

		Variable
		{
			name = "difficultyLimitsFile"
			class = "variable"
			type = "file_dbr"
			description = "ProxyLimits.tpl"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "chanceToRun"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "placementExtents"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3.5"
		}

		Variable
		{
			name = "delayedRun"
			class = "variable"
			type = "bool"
			description = "don't actually RunProxy until told to do so"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "factionRequired"
			class = "picklist"
			type = "string"
			description = "Faction for use"
			value = ""
			defaultValue = "Player;Survivors;Aetherials;Cthonians;Outlaws;Beasts;User0;User1;User2;User3;User4;User5;User6;User7;User8;User9;User10;User11;User12;User13;User14;User15;User16;User17;User18;User19;User20"
		}

		Variable
		{
			name = "factionGreaterThan"
			class = "variable"
			type = "bool"
			description = "Run if - True: Player value greater than faction standing, False: Player value less than faction standing"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "factionStanding"
			class = "picklist"
			type = "string"
			description = "Faction standing for use"
			value = ""
			defaultValue = "Nemesis;Hated;Despised;Tolerated;Friendly;Respected;Honored;Revered"
		}

		Variable
		{
			name = "difficultyAtLeast"
			class = "picklist"
			type = "string"
			description = "Runs if difficulty is at least this high"
			value = ""
			defaultValue = "Normal;Epic;Legendary"
		}

	}

	Group
	{
		name = "Proxy Tables"
		type = "list"

		Group
		{
			name = "Normal"
			type = "list"

			Variable
			{
				name = "pool1"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weight1"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "time1"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "pool2"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weight2"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "time2"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "pool3"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weight3"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "time3"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "pool4"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weight4"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "time4"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "pool5"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weight5"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "time5"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "pool6"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weight6"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "time6"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

		}

		Group
		{
			name = "Epic"
			type = "list"

			Variable
			{
				name = "poolEpic1"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightEpic1"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeEpic1"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolEpic2"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightEpic2"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeEpic2"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolEpic3"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightEpic3"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeEpic3"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolEpic4"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightEpic4"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeEpic4"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolEpic5"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightEpic5"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeEpic5"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolEpic6"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightEpic6"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeEpic6"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

		}

		Group
		{
			name = "Legendary"
			type = "list"

			Variable
			{
				name = "poolLegendary1"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightLegendary1"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeLegendary1"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolLegendary2"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightLegendary2"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeLegendary2"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolLegendary3"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightLegendary3"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeLegendary3"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolLegendary4"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightLegendary4"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeLegendary4"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolLegendary5"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightLegendary5"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeLegendary5"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

			Variable
			{
				name = "poolLegendary6"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "weightLegendary6"
				class = "variable"
				type = "int"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "timeLegendary6"
				class = "picklist"
				type = "string"
				description = ""
				value = ""
				defaultValue = "Always;Day;Night"
			}

		}

	}

	Group
	{
		name = "Accessory"
		type = "list"

		Group
		{
			name = "Normal Acc"
			type = "list"

			Variable
			{
				name = "accessory1"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

		Group
		{
			name = "Epic Acc"
			type = "list"

			Variable
			{
				name = "accessoryEpic1"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

		Group
		{
			name = "Legendary Acc"
			type = "list"

			Variable
			{
				name = "accessoryLegendary1"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
			}

		}

	}

}

