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
		name = "MonsterSpawner"
		type = "list"

		Variable
		{
			name = "spawnMode"
			class = "picklist"
			type = "string"
			description = "Spawn mode"
			value = ""
			defaultValue = "Radial;Directional"
		}

		Variable
		{
			name = "minSpawnDelay"
			class = "variable"
			type = "real"
			description = "Minimum delay between spawning monsters (seconds)"
			value = ""
			defaultValue = "5.0"
		}

		Variable
		{
			name = "maxSpawnDelay"
			class = "variable"
			type = "real"
			description = "Maximum delay between spawning monsters (seconds)"
			value = ""
			defaultValue = "15.0"
		}

		Variable
		{
			name = "numSpawnCharges"
			class = "variable"
			type = "int"
			description = "Total number of monsters to spawn (zero = infinite)"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxPopulation"
			class = "variable"
			type = "int"
			description = "Maximum monsters that can be active from this portal simultaneously"
			value = ""
			defaultValue = "5"
		}

		Variable
		{
			name = "minSpawnLevel"
			class = "variable"
			type = "int"
			description = "Minimum level of the spawner"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxSpawnLevel"
			class = "variable"
			type = "int"
			description = "Maximum level of the spawn"
			value = ""
			defaultValue = "100"
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

}

fileNameHistoryEntry
{
	"Templates\New Template.tpl"
	"Templates\MonsterPortal.tpl"
}
