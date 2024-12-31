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
		defaultValue = "database/templates/bindinginteractable.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/questmarker.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/shrinehookpack.tpl"
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
			defaultValue = "MonsterShrine"
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
		name = "StaticShrine Config"
		type = "list"

		Variable
		{
			name = "journalTag"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lockedTextTag"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "normalLocked"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "epicLocked"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "legendaryLocked"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "normalDisabled"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "epicDisabled"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "legendaryDisabled"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "hideMapIcon"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Group
		{
			name = "Requirements"
			type = "list"

			Group
			{
				name = "Normal"
				type = "list"

				Variable
				{
					name = "normalMonsterSpawn"
					class = "variable"
					type = "file_dbr"
					description = "Usually ProxyAmbush, if empty looks for offerings"
					value = ""
					defaultValue = ""
				}

			}

			Group
			{
				name = "Epic"
				type = "list"

				Variable
				{
					name = "epicMonsterSpawn"
					class = "variable"
					type = "file_dbr"
					description = "Usually ProxyAmbush, if empty looks for offerings"
					value = ""
					defaultValue = ""
				}

			}

			Group
			{
				name = "Legendary"
				type = "list"

				Variable
				{
					name = "legendaryMonsterSpawn"
					class = "variable"
					type = "file_dbr"
					description = "Usually ProxyAmbush, if empty looks for offerings"
					value = ""
					defaultValue = ""
				}

			}

		}

		Group
		{
			name = "Awards"
			type = "list"

			Group
			{
				name = "Normal"
				type = "list"

				Variable
				{
					name = "normalXPReward"
					class = "variable"
					type = "int"
					description = ""
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "normalLootTable"
					class = "variable"
					type = "file_dbr"
					description = "LootContainer"
					value = ""
					defaultValue = ""
				}

			}

			Group
			{
				name = "Epic"
				type = "list"

				Variable
				{
					name = "epicXPReward"
					class = "variable"
					type = "int"
					description = ""
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "epicLootTable"
					class = "variable"
					type = "file_dbr"
					description = "LootContainer"
					value = ""
					defaultValue = ""
				}

			}

			Group
			{
				name = "Legendary"
				type = "list"

				Variable
				{
					name = "legendaryXPReward"
					class = "variable"
					type = "int"
					description = ""
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "legendaryLootTable"
					class = "variable"
					type = "file_dbr"
					description = "LootContainer"
					value = ""
					defaultValue = ""
				}

			}

		}

	}

	Group
	{
		name = "StaticShrine Animations"
		type = "list"

		Variable
		{
			name = "dormantAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "dormantToRestoredAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantToRestoredAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "restoredAnimation"
			class = "variable"
			type = "file_anm"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "restoredAnimationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

	}

	Group
	{
		name = "StaticShrine Effects"
		type = "list"

		Variable
		{
			name = "dormantLoopingEffect"
			class = "variable"
			type = "file_dbr"
			description = "EffectEntity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantLoopingAttachment"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantToRestoredFxPakName"
			class = "variable"
			type = "file_dbr"
			description = "FxPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantToRestoredEffect"
			class = "variable"
			type = "file_dbr"
			description = "EffectEntity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantToRestoredEffectAttachment"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "restoredLoopingEffect"
			class = "variable"
			type = "file_dbr"
			description = "EffectEntity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "restoredLoopingAttachment"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeLoopingEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "activeLoopingAttachment"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "StaticShrine Sounds"
		type = "list"

		Variable
		{
			name = "dormantSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dormantToRestoredSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "restoredSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "proxyActivateSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

