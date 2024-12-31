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
		defaultValue = "database\Templates\TemplateBase\LootItemTable_DynAffixTable.tpl"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "parentLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "averagePlayerLevel"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "minPlayerLevel   "
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "maxPlayerLevel   "
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "numberOfPlayers"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "0 to n"
		value = ""
		defaultValue = "gameDifficulty"
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
			defaultValue = "LootItemTable_DynWeight"
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
		name = "Config"
		type = "list"

		Variable
		{
			name = "bellSlope"
			class = "array"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minItemLevelEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxItemLevelEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "targetLevelEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "disableLevelLimits"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Loot"
		type = "list"

		Variable
		{
			name = "lootName1"
			class = "variable"
			type = "file_dbr"
			description = "Item or LootTable"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight1"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight2"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName3"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight3"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName4"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight4"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName5"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight5"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName6"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight6"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName7"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight7"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName8"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight8"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName9"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight9"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName10"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight10"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName11"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight11"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName12"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight12"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName13"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight13"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName14"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight14"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName15"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight15"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName16"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight16"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName17"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight17"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName18"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight18"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName19"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight19"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName20"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight20"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName21"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight21"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName22"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight22"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName23"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight23"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName24"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight24"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName25"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight25"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName26"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight26"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName27"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight27"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName28"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight28"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName29"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight29"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName30"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight30"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName31"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight31"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName32"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight32"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName33"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight33"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName34"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight34"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName35"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight35"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName36"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight36"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName37"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight37"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName38"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight38"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName39"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight39"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName40"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight40"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName41"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight41"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName42"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight42"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName43"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight43"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName44"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight44"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName45"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight45"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName46"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight46"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName47"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight47"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName48"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight48"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName49"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight49"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName50"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight50"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootName51"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight51"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName52"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight52"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName53"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight53"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName54"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight54"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName55"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight55"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName56"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight56"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName57"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight57"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName58"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight58"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName59"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight59"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName60"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight60"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName61"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight61"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName62"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight62"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName63"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight63"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName64"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight64"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName65"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight65"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName66"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight66"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName67"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight67"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName68"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight68"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "lootName69"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight69"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName70"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight70"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}


		Variable
		{
			name = "lootName71"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight71"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName72"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight72"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName73"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight73"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName74"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight74"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName75"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight75"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName76"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight76"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName77"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight77"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName78"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight78"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName79"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight79"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName80"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight80"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName81"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight81"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName82"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight82"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName83"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight83"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName84"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight84"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName85"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight85"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName86"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight86"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName87"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight87"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName88"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight88"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName89"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight89"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName90"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight90"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName91"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight91"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName92"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight92"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName93"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight93"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName94"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight94"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName95"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight95"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName96"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight96"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName97"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight97"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName98"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight98"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName99"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight99"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		Variable
		{
			name = "lootName100"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootWeight100"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}
		
		
	}

}

