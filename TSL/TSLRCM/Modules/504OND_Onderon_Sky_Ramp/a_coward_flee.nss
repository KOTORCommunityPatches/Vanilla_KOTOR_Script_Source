// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;
	int intGLOB_49 = 0;
	int intGLOB_50 = 1;
	int intGLOB_51 = 2;
	int intGLOB_52 = 29;
	int intGLOB_53 = 65;
	int intGLOB_54 = 98;
	int intGLOB_55 = 99;
	int intGLOB_56 = 100;
	int intGLOB_57 = 101;
	int intGLOB_58 = 103;
	int intGLOB_59 = 104;
	int intGLOB_60 = 105;
	int intGLOB_61 = 106;
	int intGLOB_62 = 102;
	int intGLOB_63 = 107;
	int intGLOB_64 = 108;
	int intGLOB_65 = 102;
	int intGLOB_66 = 107;
	int intGLOB_67 = 108;
	int intGLOB_68 = 109;
	int intGLOB_69 = 15;
	int intGLOB_70 = 10;
	int intGLOB_71 = 5;
	int intGLOB_72 = 2;
	int intGLOB_73;
	int intGLOB_74;
	int intGLOB_75;
	object objectGLOB_1;
	int intGLOB_76;
	int intGLOB_77;
	int intGLOB_78;
	int intGLOB_79;
	int intGLOB_80;
	int intGLOB_81;
	int intGLOB_82 = 1;
	int intGLOB_83 = 2;
	int intGLOB_84 = 3;
	int intGLOB_85 = 20;
	int intGLOB_86 = 21;
	int intGLOB_87 = 22;
	int intGLOB_88 = 23;
	int intGLOB_89 = 24;
	int intGLOB_90 = 25;
	int intGLOB_91 = 26;
	int intGLOB_92 = 27;
	int intGLOB_93 = 28;
	int intGLOB_94 = 66;
	int intGLOB_95 = 67;
	int intGLOB_96 = 68;
	int intGLOB_97 = 69;
	int intGLOB_98 = 70;
	int intGLOB_99 = 71;
	int intGLOB_100 = 72;
	int intGLOB_101 = 73;
	int intGLOB_102 = 74;
	int intGLOB_103 = 75;
	int intGLOB_104 = 76;
	int intGLOB_105 = 77;
	int intGLOB_106 = 78;
	int intGLOB_107 = 79;
	int intGLOB_108 = 80;
	int intGLOB_109 = 81;
	int intGLOB_110 = 82;
	int intGLOB_111 = 83;
	int intGLOB_112 = 85;
	int intGLOB_113 = 86;
	int intGLOB_114 = 87;
	int intGLOB_115 = 88;
	int intGLOB_116 = 89;
	int intGLOB_117 = 90;
	int intGLOB_118 = 91;
	int intGLOB_119 = 92;
	int intGLOB_120 = 94;
	int intGLOB_121 = 95;
	int intGLOB_122 = 96;
	int intGLOB_123 = 97;
	int intGLOB_124 = 1;
	int intGLOB_125 = 2;
	int intGLOB_126 = 3;
	int intGLOB_127 = 4;
	int intGLOB_128 = 5;

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object oVaklu_sergeant3;
				object oVa_troop_coward;
				oVaklu_sergeant3 = GetObjectByTag("vaklu_sergeant3", 0);
				int int3 = 2;
				while ((int3 <= 8)) {
				oVa_troop_coward = GetObjectByTag("va_troop_coward", int3);
				if (GetIsObjectValid(oVa_troop_coward)) {
					DelayCommand(0.2, AssignCommand(oVa_troop_coward, ActionMoveToObject(GetWaypointByTag("wp_coward"), 1, 1.0)));
				}
					(int3++);
				}
				DelayCommand(0.2, ActionMoveToObject(GetWaypointByTag("wp_coward_move"), 1, 1.0));
			}
			break;
		case 1:
			{
				int int5 = 4;
				while ((int5 <= 8)) {
				{
					object object7 = GetObjectByTag("va_troop_coward", int5);
					if (GetIsObjectValid(object7)) {
						DestroyObject(object7, 0.0, 1, 0.0, 0);
					}
				}
					(int5++);
				}
				object object9 = GetObjectByTag("va_troop_coward", 0);
				object object11 = GetObjectByTag("va_troop_coward", 1);
				object object13 = GetObjectByTag("va_troop_coward", 2);
				object object15 = GetObjectByTag("va_troop_coward", 3);
				object oG_DARKJEDI04 = GetObjectByTag("G_DARKJEDI04", 0);
				AssignCommand(object13, ActionJumpToObject(GetObjectByTag("wp_flee1", 0), 1));
				AssignCommand(object15, ActionJumpToObject(GetObjectByTag("wp_flee3", 0), 1));
				AssignCommand(object13, ActionMoveToObject(GetObjectByTag("wp_coward", 0), 1, 1.0));
				AssignCommand(object15, ActionMoveToObject(GetObjectByTag("wp_coward", 0), 1, 1.0));
				AssignCommand(object9, ActionJumpToObject(GetObjectByTag("wp_sith_cutdown1a", 0), 1));
				AssignCommand(object11, ActionJumpToObject(GetObjectByTag("wp_sith_cutdown2a", 0), 1));
				AssignCommand(object9, ActionMoveToObject(GetObjectByTag("wp_sith_cutdown1", 0), 1, 1.0));
				AssignCommand(object11, ActionMoveToObject(GetObjectByTag("wp_sith_cutdown2", 0), 1, 1.0));
				AssignCommand(object9, ActionWait(3.0));
				AssignCommand(object11, ActionWait(3.0));
				AssignCommand(object9, ActionPlayAnimation(104, 1.0, 1.0));
				AssignCommand(object11, ActionPlayAnimation(104, 1.0, 1.0));
				DelayCommand(3.0, AssignCommand(oG_DARKJEDI04, ActionMoveToObject(GetObjectByTag("wp_sith_lord", 0), 0, 1.0)));
			}
			break;
		case 2:
			{
				object object28 = GetObjectByTag("G_DARKJEDI04", 0);
				object object30 = GetObjectByTag("va_troop_coward", 0);
				object object32 = GetObjectByTag("va_troop_coward", 1);
				SetLocalBoolean(object30, 45, 1);
				SetLocalBoolean(object32, 45, 1);
				ApplyEffectToObject(2, EffectCutSceneHorrified(), object32, 0.0);
				ChangeToStandardFaction(object28, 11);
				ChangeToStandardFaction(object30, 12);
				ChangeToStandardFaction(object32, 12);
				AssignCommand(object28, ActionCastSpellAtObject(9, object30, 1, 0, 0, 0, 0));
				AssignCommand(object28, ActionCastSpellAtObject(43, object32, 1, 0, 0, 0, 0));
				DelayCommand(2.0, ChangeToStandardFaction(object30, 5));
				DelayCommand(2.6, ApplyEffectToObject(2, EffectDeath(0, 1, 0), object30, 0.0));
				DelayCommand(3.5, ApplyEffectToObject(2, EffectDeath(0, 1, 0), object32, 0.0));
				DelayCommand(3.5, ChangeToStandardFaction(object32, 5));
				DelayCommand(4.0, SetLightsaberPowered(GetObjectByTag("SithAppren", 0), 1, 1, 1));
				DelayCommand(4.0, SetLightsaberPowered(GetObjectByTag("SithAppren", 1), 1, 1, 1));
			}
			break;
		case 3:
			DestroyObject(GetObjectByTag("va_troop_coward", 3), 0.0, 1, 0.0, 0);
			DestroyObject(GetObjectByTag("va_troop_coward", 2), 0.0, 1, 0.0, 0);
			DestroyObject(GetObjectByTag("va_troop_coward", 1), 0.0, 1, 0.0, 0);
			DestroyObject(GetObjectByTag("va_troop_coward", 0), 0.0, 1, 0.0, 0);
			AssignCommand(GetObjectByTag("G_DARKJEDI04", 0), ActionMoveToObject(GetObjectByTag("wp_sith_move1", 0), 1, 1.0));
			AssignCommand(GetObjectByTag("SithAppren", 0), ActionMoveToObject(GetObjectByTag("wp_sith_move2", 0), 1, 1.0));
			AssignCommand(GetObjectByTag("SithAppren", 1), ActionMoveToObject(GetObjectByTag("wp_sith_move3", 0), 1, 1.0));
			DelayCommand(4.0, ChangeToStandardFaction(GetObjectByTag("vaklu_sergeant3", 0), 1));
			DelayCommand(5.0, ChangeToStandardFaction(GetObjectByTag("G_DARKJEDI04", 0), 1));
			DelayCommand(5.0, ChangeToStandardFaction(GetObjectByTag("SithAppren", 0), 1));
			DelayCommand(5.0, ChangeToStandardFaction(GetObjectByTag("SithAppren", 1), 1));
			DelayCommand(6.0, AssignCommand(GetObjectByTag("G_DARKJEDI04", 0), ActionAttack(GetFirstPC(), 0)));
			DelayCommand(6.0, AssignCommand(GetObjectByTag("SithAppren", 0), ActionAttack(GetFirstPC(), 0)));
			DelayCommand(6.0, AssignCommand(GetObjectByTag("SithAppren", 1), ActionAttack(GetFirstPC(), 0)));
			break;
	}
}