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
		name = "WeatherSystem"
		type = "list"

		Variable
		{
			name = "type"
			class = "picklist"
			type = "string"
			description = "Base type which defines the behavior of the system"
			value = ""
			defaultValue = "Rain;Snow;Mist;Fog;GroundFog;Lightning;WindParticle;Leaves"
		}

		Variable
		{
			name = "name"
			class = "variable"
			type = "string"
			description = "Name of the system"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "texture"
			class = "variable"
			type = "file_tex"
			description = "Texture used by particles (particle based systems only)"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "blending"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Combine;Additive"
		}

		Variable
		{
			name = "sound"
			class = "variable"
			type = "file_dbr"
			description = "Sound to loop while the system is running"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "particleSize"
			class = "variable"
			type = "real"
			description = "Particle size (meters, particle based systems only)"
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "particleSpeed"
			class = "variable"
			type = "real"
			description = "Particle speed (meters/second, particle based systems only)"
			value = ""
			defaultValue = "16.0"
		}

		Variable
		{
			name = "particleLife"
			class = "variable"
			type = "real"
			description = "Particle life (seconds, particle based systems only)"
			value = ""
			defaultValue = "1.56"
		}

		Variable
		{
			name = "spawnRadius"
			class = "variable"
			type = "real"
			description = "Particle spawn radius around the player (meters, particle based systems only)"
			value = ""
			defaultValue = "15.0"
		}

		Variable
		{
			name = "spawnHeight"
			class = "variable"
			type = "real"
			description = "Height at which to spawn particles (meters, used by some particle based systems)"
			value = ""
			defaultValue = "20.0"
		}

	}

}

