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
		defaultValue = "database\Templates\TemplateBase\Skill_Base.tpl"
	}

	Variable
	{
		name = "Include File"
		class = "static"
		type = "include"
		description = ""
		value = ""
		defaultValue = "database\Templates\TemplateBase\Skill_PassiveModifier.tpl"
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
			defaultValue = "Skill_Mastery"
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
			name = "MasteryEnumeration"
			class = "picklist"
			type = "string"
			description = ""
			value = ""
			defaultValue = "SkillClass01;SkillClass02;SkillClass03;SkillClass04;SkillClass05;SkillClass06;SkillClass07;SkillClass08;SkillClass09;SkillClass10;SkillClass11;SkillClass12;SkillClass13;SkillClass14;SkillClass15;SkillClass16;SkillClass17;SkillClass18;SkillClass19;SkillClass20;SkillClass21;SkillClass22;SkillClass23;SkillClass24;SkillClass25;SkillClass26;SkillClass27;SkillClass28;SkillClass29;SkillClass30;SkillClass31;SkillClass32;SkillClass33;SkillClass34;SkillClass35;SkillClass36;SkillClass37;SkillClass38;SkillClass39;SkillClass40;SkillClass41;SkillClass42;SkillClass43;SkillClass44;SkillClass45;SkillClass46;SkillClass47;SkillClass48;SkillClass49;SkillClass50;SkillClass51;SkillClass52;SkillClass53;SkillClass54;SkillClass55;SkillClass56;SkillClass57;SkillClass58;SkillClass59;SkillClass60;SkillClass61;SkillClass62;SkillClass63;SkillClass64;SkillClass65;SkillClass66;SkillClass67;SkillClass68;SkillClass69;SkillClass70;SkillClass71;SkillClass72;SkillClass73;SkillClass74;SkillClass75;SkillClass76;SkillClass77;SkillClass78;SkillClass79;SkillClass80"
		}

	}

}

