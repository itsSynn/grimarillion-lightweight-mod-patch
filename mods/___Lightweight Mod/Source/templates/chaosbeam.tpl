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
			defaultValue = "ChaosBeam"
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
		name = "Properties"
		type = "list"

		Variable
		{
			name = "Shader"
			class = "variable"
			type = "file_ssh"
			description = ""
			value = ""
			defaultValue = "Shaders/Effects/TrailAdditive.ssh"
		}

		Variable
		{
			name = "Texture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = "SandBox/Max/Models/AdditiveScrollTest.tex"
		}

		Variable
		{
			name = "Red255"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "255"
		}

		Variable
		{
			name = "Green255"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "255"
		}

		Variable
		{
			name = "Blue255"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "255"
		}

		Variable
		{
			name = "Alpha255"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "255"
		}

		Variable
		{
			name = "Width"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "TextureStretch"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "6"
		}

		Variable
		{
			name = "BeamCount"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "3"
		}

		Variable
		{
			name = "WaveSpeed"
			class = "variable"
			type = "real"
			description = "Controls the individual wave speed"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "TotalAmplitude"
			class = "variable"
			type = "real"
			description = "Scales the overall bend"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "WaveAmplitude"
			class = "variable"
			type = "real"
			description = "Scales individual wave amplitude"
			value = ""
			defaultValue = "0.3"
		}

		Variable
		{
			name = "StartScale"
			class = "variable"
			type = "real"
			description = "Used with dynamicScale"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "EndScale"
			class = "variable"
			type = "real"
			description = "Used with dynamicScale"
			value = ""
			defaultValue = "1.5"
		}

		Variable
		{
			name = "ScaleLengthPercent1"
			class = "variable"
			type = "int"
			description = "Scale to start scale by this percent of total length"
			value = ""
			defaultValue = "30"
		}

		Variable
		{
			name = "ScaleLengthPercent2"
			class = "variable"
			type = "int"
			description = "Scale to end scale by this percent of total length"
			value = ""
			defaultValue = "70"
		}

		Variable
		{
			name = "TotalSegments"
			class = "variable"
			type = "real"
			description = "More segments, more waves"
			value = ""
			defaultValue = "5"
		}

		Variable
		{
			name = "DynamicScale"
			class = "variable"
			type = "bool"
			description = "Dynamically scales based on start/end scales"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "EndAlpha"
			class = "variable"
			type = "real"
			description = "Alpha at each end of beam"
			value = ""
			defaultValue = "0"
		}

	}

}

