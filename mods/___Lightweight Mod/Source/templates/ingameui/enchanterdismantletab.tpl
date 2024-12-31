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
		name = "Dismantle Tab"
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
			name = "dismantleBox1"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dismantleBox2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dismantleItemButton"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dismantleCostNumber"
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
			name = "dynamiteTotalNumber"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dynamiteNotEnoughNumber"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dismantleCostText"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dynamiteTotalText"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dynamiteBitmap"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dynamiteNumberBoxBitmap"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dismantleItemSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Dismantle Config"
		type = "list"

		Variable
		{
			name = "itemGenerated"
			class = "variable"
			type = "file_dbr"
			description = "Base Item DBR"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemWeights"
			class = "array"
			type = "int"
			description = "Index Position + 1 = Items Generated"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dismantleCost"
			class = "variable"
			type = "equation"
			description = "Cost for dismantling"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "commonItemBonus"
			class = "variable"
			type = "file_dbr"
			description = "MasterTable"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "commonItemBonusWeight"
			class = "variable"
			type = "real"
			description = "Bonus weight for common item"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "magicItemBonus"
			class = "variable"
			type = "file_dbr"
			description = "MasterTable"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "magicItemBonusWeight"
			class = "variable"
			type = "real"
			description = "Bonus weight for magical item"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rareItemBonus"
			class = "variable"
			type = "file_dbr"
			description = "MasterTable"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rareItemBonusWeight"
			class = "variable"
			type = "real"
			description = "Bonus weight for rare item"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "epicItemBonus"
			class = "variable"
			type = "file_dbr"
			description = "MasterTable"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "epicItemBonusWeight"
			class = "variable"
			type = "real"
			description = "Bonus weight for epic item"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "legendaryItemBonus"
			class = "variable"
			type = "file_dbr"
			description = "MasterTable"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "legendaryItemBonusWeight"
			class = "variable"
			type = "real"
			description = "Bonus weight for legend item"
			value = ""
			defaultValue = ""
		}

	}

}

