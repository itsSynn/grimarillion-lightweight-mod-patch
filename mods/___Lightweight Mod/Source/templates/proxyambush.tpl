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
		defaultValue = "database\Templates\Proxy.tpl"
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
			defaultValue = "ProxyAmbush"
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
		name = "Proxy Ambush"
		type = "list"

		Variable
		{
			name = "alertArea"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minSpawnTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxSpawnTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minDelayTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxDelayTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minGroupSize"
			class = "variable"
			type = "int"
			description = "Minimum to spawn at once"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "maxGroupSize"
			class = "variable"
			type = "int"
			description = "Maximum to spawn at once"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnThreshold"
			class = "variable"
			type = "int"
			description = "Wait until this many left to spawn more"
			value = ""
			defaultValue = ""
		}

	}

}

