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
		defaultValue = "database\Templates\InGameUI\ScrollableWindow.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\InGameUI\Includes\Border.tpl"
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
		name = "Quest2Journal"
		type = "list"

		Variable
		{
			name = "background"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "questTitle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "taskTitle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "taskText"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "incentiveTitleStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "incentiveStyle"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "incentiveSectionSpacing"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "objectiveTitleStyle"
			class = "variable"
			type = "file_dbr"
			description = "Style of reward section title"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objectiveStyle"
			class = "variable"
			type = "file_dbr"
			description = "Style of objective text"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "objectiveSectionSpacing"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "rewardTitleStyle"
			class = "variable"
			type = "file_dbr"
			description = "Style of rewards section title"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rewardStyle"
			class = "variable"
			type = "file_dbr"
			description = "Style of reward text"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rewardSectionSpacing"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "completeBitmap"
			class = "variable"
			type = "file_dbr"
			description = "Objective complete bitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minorRowHeight"
			class = "variable"
			type = "real"
			description = "Height of objective/tex t reward rows"
			value = ""
			defaultValue = "20"
		}

		Variable
		{
			name = "majorRowHeight"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "25"
		}

		Variable
		{
			name = "itemSpacing"
			class = "variable"
			type = "real"
			description = "Spacing between item rewards"
			value = ""
			defaultValue = "20"
		}

		Variable
		{
			name = "showQuestTitle"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "contentX"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "contentY"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "contentWidth"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "300"
		}

		Variable
		{
			name = "itemBorderAdjust"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "8"
		}

		Variable
		{
			name = "itemSectionSpacing"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "10"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\InGameUI\New Template.tpl"
}
