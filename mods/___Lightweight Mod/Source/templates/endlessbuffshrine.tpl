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
			defaultValue = "EndlessBuffShrine"
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

		Variable
		{
			name = "endlessShrineType"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Blue;Yellow;Red;Green;Death"
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
					name = "normalOffering1"
					class = "variable"
					type = "file_dbr"
					description = "First item"
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "normalOffering2"
					class = "variable"
					type = "file_dbr"
					description = "Second item"
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "normalOffering3"
					class = "variable"
					type = "file_dbr"
					description = "Third item"
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
					name = "epicOffering1"
					class = "variable"
					type = "file_dbr"
					description = "First item"
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "epicOffering2"
					class = "variable"
					type = "file_dbr"
					description = "Second item"
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "epicOffering3"
					class = "variable"
					type = "file_dbr"
					description = "Third item"
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
					name = "legendaryOffering1"
					class = "variable"
					type = "file_dbr"
					description = "First item"
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "legendaryOffering2"
					class = "variable"
					type = "file_dbr"
					description = "Second item"
					value = ""
					defaultValue = ""
				}

				Variable
				{
					name = "legendaryOffering3"
					class = "variable"
					type = "file_dbr"
					description = "Third item"
					value = ""
					defaultValue = ""
				}

			}

		}

		Group
		{
			name = "Buff"
			type = "list"

			Variable
			{
				name = "skillName"
				class = "variable"
				type = "file_dbr"
				description = ""
				value = ""
				defaultValue = ""
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

