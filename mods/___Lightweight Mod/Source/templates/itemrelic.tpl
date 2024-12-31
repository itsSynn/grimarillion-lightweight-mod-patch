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
		defaultValue = "database\Templates\TemplateBase\ItemBase.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\AttributePak.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\ItemSkillAugment.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\ItemSkillModifiers.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\RacialBonus.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\PetBonusInc.tpl"
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
			defaultValue = "ItemRelic"
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
		name = "Relic Config"
		type = "list"

		Variable
		{
			name = "completedRelicLevel"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shardBitmap"
			class = "variable"
			type = "file_tex"
			description = "Incomplete Bitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicBitmap"
			class = "variable"
			type = "file_tex"
			description = "Completed Bitmap"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bonusTableName"
			class = "variable"
			type = "file_dbr"
			description = "LootRandomizerTable loaded with AttributePak"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicToRelicSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak - played when relic is incomplete"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicCompleteSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak - played when relic is complete"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "relicToItemSound"
			class = "variable"
			type = "file_dbr"
			description = "SoundPak - played when relic adds to item"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemOverlayBitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemOverlayBitmapPartial"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = "XPack\UI\Inventory\PartialRelicOverlay.tex"
		}

		Variable
		{
			name = "itemOverlayBitmapSmall"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "itemOverlayBitmapPartialSmall"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Relic Qualifiers"
		type = "list"

		Variable
		{
			name = "amulet"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "bracelet"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "ring"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "medal"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "head"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "shoulders"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "hands"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "chest"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "waist"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "legs"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "feet"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "shield"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "offhand"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "spear"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "staff"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "axe"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "mace"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "sword"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "dagger"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "scepter"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "ranged1h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "ranged2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "axe2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "mace2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "sword2h"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

	}

}

