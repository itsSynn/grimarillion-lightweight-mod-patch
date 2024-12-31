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
		defaultValue = "database\templates\Actor.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\CharacterBio.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Reward.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\CharAnimationTable.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\Conversation.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database/templates/characterhookpack.tpl"
	}

	Variable
	{
		name = "Object Variable"
		class = "static"
		type = "eqnVariable"
		description = ""
		value = ""
		defaultValue = "charLevel"
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
			defaultValue = "Character"
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
		name = "Character"
		type = "list"

		Variable
		{
			name = "charLevel"
			class = "variable"
			type = "equation"
			description = "Equation used to determine level if this character is placed in the world manually."
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "minLevel"
			class = "variable"
			type = "int"
			description = "Minimum level when placed manually."
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "maxLevel"
			class = "variable"
			type = "int"
			description = "Maximum level when placed manually."
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "experiencePoints"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "characterGenderProfile"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "World;Male;Female;Native;BodyTypeA;BodyTypeB;BodyTypeC;"
		}

		Variable
		{
			name = "characterRacialProfile"
			class = "array"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultHeadPiece"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultShouldersPiece"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultChestPiece"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultLegsPiece"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultFeetPiece"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultHandsPiece"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "defaultTeamMajor"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "TeamMajor_Monster;TeamMajor_Human;TeamMajor_Friendly;TeamMajor_Hostile"
		}

		Variable
		{
			name = "defaultTeamMinor"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "TeamMinorMonster_Friendly;TeamMinorMonster_Hostile;TeamMinorMonster_Red;TeamMinorMonster_Orange;TeamMinorMonster_Yellow;TeamMinorMonster_Green;TeamMinorMonster_Blue;TeamMinorMonster_Indigo;TeamMinorMonster_Violet;TeamMinorHuman_Friendly"
		}

		Variable
		{
			name = "weaponScale"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "numAttackSlots"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "4"
		}

		Variable
		{
			name = "numDefenseSlots"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "4"
		}

		Variable
		{
			name = "combatManagerRecord"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pathingSize"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Small;Medium;Large"
		}

		Variable
		{
			name = "portraitName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "startVisible"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "distressCall"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "distressCallRange"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "15.0"
		}

		Variable
		{
			name = "distressCallGroup"
			class = "variable"
			type = "string"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "distressCallTime"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "5000"
		}

		Variable
		{
			name = "maxDistressCalls"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "portraitTag"
			class = "variable"
			type = "int"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "forcedUpdates"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "invincible"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "hiddenFromCombat"
			class = "variable"
			type = "bool"
			description = "Hide from UI and Combat"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "causesAnger"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "angerMultiplier"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "deathAnimBlendTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "250.0"
		}

		Variable
		{
			name = "UpperHealthDisplayPercentage"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "LowerHealthDisplayPercentage"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "triggerBoundingVolumes"
			class = "variable"
			type = "bool"
			description = "will this character trigger bounding volume events"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "hitThreshold"
			class = "variable"
			type = "int"
			description = "Minimum percentage of max life in damage which causes hit reaction"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "punctuation"
			class = "variable"
			type = "file_dbr"
			description = "Floating punctuation object above the character's head!"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "targetable"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

	}

	Group
	{
		name = "Character Sounds"
		type = "list"

		Variable
		{
			name = "footSoundSand"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "attackSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "swipeSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "stunSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lootSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "levelUpSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "devotionSkillLevelUpSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionLevelUpSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionLevelDownSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lowHealthSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lowHealthTriggerLevel"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lowHealthResetLevel"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "impactSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "impactSoundChance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "loopingRunningSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "loopingRunningSoundFadeTime"
			class = "variable"
			type = "int"
			description = "in milliseconds"
			value = ""
			defaultValue = "1000"
		}

		Variable
		{
			name = "splashSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "cooldownResetSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Character Effects"
		type = "list"

		Variable
		{
			name = "spawnEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "spawnSoundEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "prespawnEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "levelUpFx"
			class = "variable"
			type = "file_dbr"
			description = "Effect Entity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "devotionSkillLevelUpFx"
			class = "variable"
			type = "file_dbr"
			description = "Effect Entity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionLevelUpFx"
			class = "variable"
			type = "file_dbr"
			description = "Effect Entity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "factionLevelDownFx"
			class = "variable"
			type = "file_dbr"
			description = "Effect Entity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "cooldownResetFx"
			class = "variable"
			type = "file_dbr"
			description = "Effect Entity"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dyingFxPak"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lightRig"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "lqLightingHighlight"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.0"
		}

	}

	Group
	{
		name = "Movement Parameters"
		type = "list"

		Variable
		{
			name = "avoidForce"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0.5"
		}

		Variable
		{
			name = "pathMass"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "tweakSpineOnTurn"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "pathGenerationStyle"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Default;Sheep"
		}

		Variable
		{
			name = "minRotationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "9.0"
		}

		Variable
		{
			name = "maxRotationSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "12.0"
		}

		Variable
		{
			name = "disallowRotation"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "rotateWhenChatting"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "dbIgnoreWhenPathing"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "allowedOffNavmesh"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "walkDistance"
			class = "variable"
			type = "real"
			description = "Distance below which to walk when pursuing."
			value = ""
			defaultValue = "0.0"
		}

		Variable
		{
			name = "walkSpeed"
			class = "variable"
			type = "real"
			description = "Walk speed multiplier"
			value = ""
			defaultValue = "1.0"
		}

		Variable
		{
			name = "walkUsesRun"
			class = "variable"
			type = "bool"
			description = "Use run animation when walking?"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "disableMovement"
			class = "variable"
			type = "bool"
			description = "Character is never part of movement manager"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Death Parameters"
		type = "list"

		Variable
		{
			name = "deleteBehavior"
			class = "picklist"
			type = "string"
			description = "if delete, removes actor on death, if dissolve - deletes actor with dissolve effect"
			value = ""
			defaultValue = "None;Delete;Dissolve;DissolveOnCallback;PlayEffect;PlaySound;Fade;Corpse"
		}

		Variable
		{
			name = "dissolveEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dissolveLight"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dissolveColorR"
			class = "variable"
			type = "int"
			description = "range 0 to 255"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dissolveColorG"
			class = "variable"
			type = "int"
			description = "range 0 to 255"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dissolveColorB"
			class = "variable"
			type = "int"
			description = "range 0 to 255"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "dissolveTime"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "2.0"
		}

		Variable
		{
			name = "dissolveTexture"
			class = "variable"
			type = "file_tex"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "ignoreDissolveDelay"
			class = "variable"
			type = "bool"
			description = "Ignore default dissolve delay"
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "chanceToSpawnOnDeath"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "poolToSpawnOnDeath"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "waitForCallbackToSpawn"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "actorToSpawnForMyBones"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "deathEffect"
			class = "variable"
			type = "file_dbr"
			description = "effect that plays when character starts dying"
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "attachDeathEffect"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "overrideRagdollBehavior"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = ";Crumple;TakeHit;Random"
		}

		Variable
		{
			name = "overrideRagdollSpeed"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "ragdollPhysics"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "1"
		}

		Variable
		{
			name = "doLateCrumple"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "physicsTimeLimit"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "gibEffect"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "gibSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "gibThreshold"
			class = "variable"
			type = "int"
			description = "Minimum percentage of max life (as killing blow) needed to gib the character"
			value = ""
			defaultValue = "75"
		}

		Variable
		{
			name = "overkillOnDismiss"
			class = "variable"
			type = "bool"
			description = ""
			value = ""
			defaultValue = "0"
		}

		Variable
		{
			name = "registerCallbackToDie"
			class = "variable"
			type = "bool"
			description = "Enable onCallbackDie script trigger during death animation"
			value = ""
			defaultValue = "0"
		}

	}

	Group
	{
		name = "Special Handlers"
		type = "list"

		Variable
		{
			name = "specialCharHandlerNames"
			class = "array"
			type = "file_dbr"
			description = "SpecialCharHandler records"
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Animation Sets"
		type = "list"

		Variable
		{
			name = "charAnimationTableName"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Animation Sounds"
		type = "list"

		Variable
		{
			name = "criticalHitSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "deathSound1"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "deathSound2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "deathSound3"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "voxSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "voxSoundChance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "bodyFallSound"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "bodyFallSoundChance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "voiceSound1"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "voiceSound1Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "voiceSound2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "voiceSound2Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "voiceSound3"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "voiceSound3Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "specialAttackSound1"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specialAttackSound1Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "specialAttackSound2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specialAttackSound2Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "specialAttackSound3"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specialAttackSound3Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "specialAttackSound4"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "specialAttackSound4Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "genericSound1"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "genericSound1Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "genericSound2"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "genericSound2Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "genericSound3"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "genericSound3Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

		Variable
		{
			name = "genericSound4"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "genericSound4Chance"
			class = "variable"
			type = "real"
			description = ""
			value = ""
			defaultValue = "100"
		}

	}

	Group
	{
		name = "Footsteps"
		type = "list"

		Variable
		{
			name = "footGrass"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footDirt"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footSand"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footSnow"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footStone"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footWood"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footWater"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "footPrint"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

	}

	Group
	{
		name = "Factions"
		type = "list"

		Variable
		{
			name = "factions"
			class = "variable"
			type = "file_dbr"
			description = ""
			value = ""
			defaultValue = ""
		}

		Variable
		{
			name = "visibleFaction"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "Alone;Invisible;GenericMonster;Player;Survivors;Aetherials;Cthonians;Outlaws;Beasts;Drifters;NeutralNPC;User0;User1;User2;User3;User4;User5;User6;User7;User8;User9;User10;User11;User12;User13;User14;User15;User16;User17;User18;User19;User20;User21;User22;User23;User24;User25;User26;User27;User28;User29;User30;User31;User32;User33;User34;User35;User36;User37;User38;User39;User40"
		}

	}

	Group
	{
		name = "Chatter"
		type = "list"

		Variable
		{
			name = "chatter"
			class = "variable"
			type = "file_dbr"
			description = "ChatterPack.tpl"
			value = ""
			defaultValue = ""
		}

	}

}

