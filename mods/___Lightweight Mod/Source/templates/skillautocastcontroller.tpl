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
		name = "Config"
		type = "list"

		Variable
		{
			name = "chanceToRun"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "triggerType"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "OnEquip;OnKill;LowHealth;LowMana;AttackEnemy;CastBuff;CastDebuf;HitByEnemy;HitByMelee;HitByProjectile;HitByCrit;AttackEnemyCrit;Block"
		}

		Variable
		{
			name = "triggerParam"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "targetType"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Enemy;Self;Ally;EnemyLocation;"
		}

		Variable
		{
			name = "autoTargetRadius"
			class = "variable"
			type = "real"
			description = "Set to pick ally or enemy"
			value = ""
			defaultValue = "10.0"
		}

	}

}

