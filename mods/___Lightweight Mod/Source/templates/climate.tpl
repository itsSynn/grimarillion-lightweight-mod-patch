Group
{
	name = "All Groups"
	type = "list"

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
			description = "Climate"
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
		name = "Climates"
		type = "list"

		Variable
		{
			name = "climate1dbr"
			class = "variable"
			type = "file_dbr"
			description = "ClimateSystem Type"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "climate1chance"
			class = "variable"
			type = "int"
			description = "Chance/Total Chances"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "climate1time"
			class = "picklist"
			type = "string"
			description = "Active Time"
			value = ""
			defaultValue = "Always;Day;Night"
		}

		Variable
		{
			name = "climate2dbr"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "climate2chance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "climate2time"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Always;Day;Night"
		}

		Variable
		{
			name = "climate3dbr"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "climate3chance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "climate3time"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Always;Day;Night"
		}

		Variable
		{
			name = "climate4dbr"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "climate4chance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "climate4time"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Always;Day;Night"
		}

		Variable
		{
			name = "climate5dbr"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "climate5chance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "climate5time"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Always;Day;Night"
		}

	}

}

fileNameHistoryEntry
{
	"Templates\New Template.tpl"
}
