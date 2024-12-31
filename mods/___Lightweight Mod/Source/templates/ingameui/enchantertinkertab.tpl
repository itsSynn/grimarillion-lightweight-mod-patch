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
		name = "Tinker Tab"
		type = "list"

		Variable
		{
			name = "itemBox"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tinkerItemButton"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tinkerCostNumber"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tooExpensiveCostNumber"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "aetherTotalNumber"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "aetherNotEnoughNumber"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tinkerCostText"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "aetherTotalText"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "aetherBitmap"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tinkerSuccessSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tinkerFailureSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tinkerAetherNumberBitmap"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Tinker Config"
		type = "list"

		Variable
		{
			name = "componentTinkerCost"
			class = "variable"
			type = "equation"
			description = "Cost for component tinkering"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicTinkerCost"
			class = "variable"
			type = "equation"
			description = "Cost for relic tinkering"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "successWeight"
			class = "variable"
			type = "real"
			description = "Weight of success"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "failureWeight"
			class = "variable"
			type = "real"
			description = "Weight of failure"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bonusWeight"
			class = "variable"
			type = "real"
			description = "Weight of bonus"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "componentBonusTable"
			class = "variable"
			type = "file_dbr"
			description = "LootRandomizerTable loaded with AttributePak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicBonusTable"
			class = "variable"
			type = "file_dbr"
			description = "LootRandomizerTable loaded with AttributePak"
			value = ""
			defaultValue = ""
		}

	}

}

