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
			defaultValue = "ItemFactionBooster"
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
		name = "Faction Booster"
		type = "list"

		Variable
		{
			name = "boostedMultiplier"
			class = "variable"
			type = "real"
			description = "Multiplier for reputation gains"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "boostedFaction"
			class = "picklist"
			type = "string"
			description = "Affected faction"
			value = ""
			defaultValue = "Player;Survivors;Aetherials;Cthonians;Outlaws;Beasts;User0;User1;User2;User3;User4;User5;User6;User7;User8;User9;User10;User11;User12;User13;User14;User15;User16;User17;User18;User19;User20;User21;User22;User23;User24;User25;User26;User27;User28;User29;User30;User31;User32;User33;User34;User35;User36;User37;User38;User39;User40"
		}

		Variable
		{
			name = "useSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bitmap"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

