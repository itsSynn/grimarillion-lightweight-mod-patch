Group
{
	name = "All Groups"
	type = "list"

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "damage"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "maxLife"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "characterLevelDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "physicalDamageDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "pierceDamageDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "sumProtectionDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "sumAbsorptionDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "offensiveAbilityDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "offensiveAbilityModifierDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "defensiveAbilityDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "defensiveAbilityModifierDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "strengthDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "dexterityDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "intelligenceDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "bonusDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Shield"
		value = ""
		defaultValue = "probabilityToHitDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Shield"
		value = ""
		defaultValue = "blockChanceDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Shield"
		value = ""
		defaultValue = "blockChanceModifierDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Shield"
		value = ""
		defaultValue = "shieldDefenseDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Shield"
		value = ""
		defaultValue = "shieldAbsorptionDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = "Shield"
		value = ""
		defaultValue = "damageDV"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "elementalDamageDV"
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
		name = "Equations"
		type = "list"

		Variable
		{
			name = "physicsStrengthEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = "3.0*(damage/maxLife)"
		}

		Variable
		{
			name = "physicsStrengthMin"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "physicsStrengthMax"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "3.0"
		}

		Variable
		{
			name = "physicalDamageEquation"
			class = "variable"
			type = "equation"
			description = "Physical damage adjustment"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalDamagePercentage"
			class = "variable"
			type = "equation"
			description = "Only for char sheet cunning dmg"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalDamageBonus"
			class = "variable"
			type = "equation"
			description = "Only for char sheet cunning dmg"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalDurationDamageEquation"
			class = "variable"
			type = "equation"
			description = "Internal trauma and bleed damage adjustment"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pierceDamageEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "magicalDamageEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "magicalDurationDamageEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicalDamageDefenseEquationDGP"
			class = "variable"
			type = "equation"
			description = "Physical damage reduction when Damage is greater than protection"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physcialDamageDefenseEquationDLEP"
			class = "variable"
			type = "equation"
			description = "Physical damage reduction when Damage is less than or equal to protection"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "offensiveAbilityEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defensiveAbilityEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "probabilityToHitEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "meleeBlockEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileBlockEquation"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shieldDamageReductionEquationDGB"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "shieldDamageReductionEquationDLEB"
			class = "variable"
			type = "equation"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Combat Regions"
		type = "list"

		Variable
		{
			name = "combatRegionFullyProtectedChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionUnprotectedChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionHeadChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionTorsoChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionShouldersChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionArmsChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionLegsChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "combatRegionFeetChance"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Probability To Hit"
		type = "list"

		Variable
		{
			name = "normalPTHEquation"
			class = "variable"
			type = "equation"
			description = "if pthChance <= threshold6"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthMinimum"
			class = "variable"
			type = "real"
			description = "if pthChance < pthMinimum, pthChance = pthMinimum"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthThreshold1"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthDamageModifier1"
			class = "variable"
			type = "real"
			description = "ifpthChance > threshold1"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthThreshold2"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthDamageModifier2"
			class = "variable"
			type = "real"
			description = "if pthChance > threshold2"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthThreshold3"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthDamageModifier3"
			class = "variable"
			type = "real"
			description = "if pthChance > threshold3"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthThreshold4"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthDamageModifier4"
			class = "variable"
			type = "real"
			description = "if pthChance > threshold4"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthThreshold5"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthDamageModifier5"
			class = "variable"
			type = "real"
			description = "if pthChance > threshold5"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthThreshold6"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pthDamageModifier6"
			class = "variable"
			type = "real"
			description = "ifpthChance > threshold6"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Combat Effects"
		type = "list"

		Variable
		{
			name = "criticalhitFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "projectileCritFxPak"
			class = "array"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

}

