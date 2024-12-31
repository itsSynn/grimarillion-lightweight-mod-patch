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
		defaultValue = "database\Templates\FixedDoor.tpl"
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
			defaultValue = "DungeonEntrance"
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
		name = "DungeonEntrance"
		type = "list"

		Variable
		{
			name = "openEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openEffectAttachPoint"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openEffectDelay"
			class = "variable"
			type = "int"
			description = "Time(ms) to delay effect start after open"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openEffect2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openEffect2AttachPoint"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "openEffect2Delay"
			class = "variable"
			type = "int"
			description = "Time(ms) to delay effect start after open"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "doorHooks"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionRequired"
			class = "picklist"
			type = "string"
			description = "Faction required to use"
			value = ""
			defaultValue = "Player;Survivors;Aetherials;Cthonians;Outlaws;Beasts;User0;User1;User2;User3;User4;User5;User6;User7;User8;User9;User10;User11;User12;User13;User14;User15;User16;User17;User18;User19;User20"
		}

		Variable
		{
			name = "factionStanding"
			class = "picklist"
			type = "string"
			description = "Faction standing required to use"
			value = ""
			defaultValue = "Nemesis;Hated;Despised;Tolerated;Friendly;Respected;Honored;Revered"
		}

	}

}

