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
			description = ""
			value = ""
			defaultValue = "SetPiecePool"
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
		name = "Pool Config"
		type = "list"

		Variable
		{
			name = "placementScheme"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Random;Grid;Camp"
		}

		Variable
		{
			name = "placementRadius"
			class = "variable"
			type = "real"
			description = "Radius in which to place objects"
			value = ""
			defaultValue = "10"
		}

		Variable
		{
			name = "minToPlace"
			class = "variable"
			type = "int"
			description = "Minimum objects to place"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxToPlace"
			class = "variable"
			type = "int"
			description = "Maximum objects to place"
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "minParts"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "maxParts"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "parts"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Pool Objects"
		type = "list"

		Variable
		{
			name = "object1"
			class = "array"
			type = "file_dbr"
			description = "DBR of the object to place"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit1"
			class = "variable"
			type = "int"
			description = "Max number of the objects to place"
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "weight1"
			class = "variable"
			type = "int"
			description = "Weight for this object"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "force1"
			class = "variable"
			type = "bool"
			description = "True if an attempt must be made to place at least one of the object"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "rotation1"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin1"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "scaleMax1"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "tags1"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer1"
			class = "variable"
			type = "real"
			description = "Additional pathable radius around objects in meters"
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object2"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit2"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight2"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force2"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation2"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin2"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax2"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags2"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer2"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object3"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit3"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight3"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force3"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation3"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin3"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax3"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags3"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer3"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object4"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit4"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight4"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force4"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation4"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin4"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax4"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags4"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer4"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object5"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit5"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight5"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force5"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation5"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin5"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax5"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags5"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer5"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object6"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit6"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight6"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force6"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation6"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin6"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax6"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags6"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer6"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object7"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit7"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight7"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force7"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation7"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin7"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax7"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags7"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer7"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object8"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit8"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight8"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force8"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation8"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin8"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax8"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags8"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer8"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object9"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit9"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight9"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force9"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation9"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin9"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax9"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags9"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer9"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "object10"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "limit10"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "weight10"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "force10"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "rotation10"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "None;Y;XYZ;Aligned;FaceOut;FaceIn"
		}

		Variable
		{
			name = "scaleMin10"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "scaleMax10"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "tags10"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "buffer10"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

	}

}

