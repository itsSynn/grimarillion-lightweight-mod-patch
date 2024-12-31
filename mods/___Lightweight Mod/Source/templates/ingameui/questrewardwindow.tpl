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
		defaultValue = "database\Templates\InGameUI\Includes\WidgetWindow.tpl"
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
		name = "QuestRewardWindow"
		type = "list"

		Variable
		{
			name = "backgroundTop"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmapSingle"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "backgroundMiddle"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmapSingle"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "backgroundBottom"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmapSingle"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "acceptButton"
			class = "variable"
			type = "file_dbr"
			description = "UIButtonStaticText"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "questTitleString"
			class = "variable"
			type = "file_dbr"
			description = "UITextString - the window title"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "questNameString"
			class = "variable"
			type = "file_dbr"
			description = "UITextString"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "XPControlBackground"
			class = "variable"
			type = "file_dbr"
			description = "UIBitmapSingle"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "XPValue"
			class = "variable"
			type = "file_dbr"
			description = "UITextNumber"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "moneyIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "unlockFactionIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "attributePointIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "skillPointIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "levelIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "armorIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weaponMeleeIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weaponRangedIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "consumableIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "miscItemIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bagIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "jewelryIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "artifactFormulaIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "devotionIcon"
			class = "variable"
			type = "file_dbr"
			description = "UIQuestRewardIcon"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "closeSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Group
		{
			name = "Control Positioning"
			type = "list"

			Variable
			{
				name = "iconBoxVerticalCenterHigh"
				class = "variable"
				type = "real"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconBoxVerticalCenterLow"
				class = "variable"
				type = "real"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconBoxHeight"
				class = "variable"
				type = "real"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconBoxWidth"
				class = "variable"
				type = "real"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconHorizontalSpace"
				class = "variable"
				type = "real"
				description = "The default horizontal distance between reward icons"
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconMinHorizontalSpace"
				class = "variable"
				type = "real"
				description = "The minimum horizontal distance between reward icons"
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconVerticalSpace"
				class = "variable"
				type = "real"
				description = "The default vertical distance between reward icons"
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "iconHorizontalMargin"
				class = "variable"
				type = "real"
				description = ""
				value = ""
				defaultValue = ""
			}

			Variable
			{
				name = "acceptButtonTopEdge"
				class = "variable"
				type = "real"
				description = "Relative to bottom of window, not top"
				value = ""
				defaultValue = ""
			}

		}

	}

}

