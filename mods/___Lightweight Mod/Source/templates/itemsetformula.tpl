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
			defaultValue = "ItemSetFormula"
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
		name = "Formula Config"
		type = "list"

		Variable
		{
			name = "displayItemName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "creationCost"
			class = "variable"
			type = "equation"
			description = "Cost of creation"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent1BaseName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent1Quantity"
			class = "variable"
			type = "int"
			description = "0 or 1"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent2BaseName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent2Quantity"
			class = "variable"
			type = "int"
			description = "0 or 1"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent3BaseName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent3Quantity"
			class = "variable"
			type = "int"
			description = "0 or 1"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent4BaseName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent4Quantity"
			class = "variable"
			type = "int"
			description = "0 or 1"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent5BaseName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent5Quantity"
			class = "variable"
			type = "int"
			description = "0 or 1"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent6BaseName"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "reagent6Quantity"
			class = "variable"
			type = "int"
			description = "0 or 1"
			value = ""
			defaultValue = ""
		}

	}

}

