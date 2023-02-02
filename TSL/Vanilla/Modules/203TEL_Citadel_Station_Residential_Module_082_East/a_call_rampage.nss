// Byte code does not match

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
	object o203_t1n1 = GetObjectByTag("203_t1n1", 0);
	if (GetIsObjectValid(o203_t1n1)) {
		switch (nParam1) {
			case 0:
				AssignCommand(o203_t1n1, ClearAllActions());
				AssignCommand(GetObjectByTag("czerkam", 0), ActionStartConversation(GetFirstPC(), "203t1n12", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				break;
			case 1:
				ActionPauseConversation();
				{
					object oNPC = GetPartyMemberByIndex(0);
					object object7 = GetPartyMemberByIndex(1);
					object object9 = GetPartyMemberByIndex(2);
					AssignCommand(oNPC, ClearAllActions());
					AssignCommand(object7, ClearAllActions());
					AssignCommand(object9, ClearAllActions());
					AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("WP_player1", 0), 1));
					AssignCommand(object7, ActionJumpToObject(GetObjectByTag("WP_player2", 0), 1));
					AssignCommand(object9, ActionJumpToObject(GetObjectByTag("WP_player3", 0), 1));
					vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("czerkam", 0)));
					AssignCommand(oNPC, ActionDoCommand(SetFacingPoint(struct2)));
					AssignCommand(object7, ActionDoCommand(SetFacingPoint(struct2)));
					AssignCommand(object9, ActionDoCommand(SetFacingPoint(struct2)));
					ActionResumeConversation();
					object oWP_tiny_attack_1 = GetObjectByTag("WP_tiny_attack_1", 0);
					AssignCommand(o203_t1n1, ActionForceMoveToObject(oWP_tiny_attack_1, 1, 1.0, 30.0));
					object oDead_duck_1 = GetObjectByTag("dead_duck_1", 0);
					if (GetIsObjectValid(oDead_duck_1)) {
						vector struct4 = GetPositionFromLocation(GetLocation(oDead_duck_1));
						AssignCommand(o203_t1n1, ActionDoCommand(SetFacingPoint(struct4)));
						AssignCommand(o203_t1n1, SetLockOrientationInDialog(o203_t1n1, 1));
					}
				}
				break;
			case 2:
				{
					object object19 = GetObjectByTag("dead_duck_1", 0);
					if (GetIsObjectValid(object19)) {
						AssignCommand(o203_t1n1, CutsceneAttack(object19, 217, 1, 1000));
					}
				}
				break;
			case 3:
				{
					object oDead_duck_2 = GetObjectByTag("dead_duck_2", 0);
					if (GetIsObjectValid(oDead_duck_2)) {
						vector struct6 = GetPositionFromLocation(GetLocation(oDead_duck_2));
						AssignCommand(o203_t1n1, ActionDoCommand(SetFacingPoint(struct6)));
						AssignCommand(o203_t1n1, SetLockOrientationInDialog(o203_t1n1, 1));
						vector struct8 = GetPositionFromLocation(GetLocation(GetObjectByTag("203_t1n1", 0)));
						AssignCommand(oDead_duck_2, ActionDoCommand(SetFacingPoint(struct8)));
						AssignCommand(oDead_duck_2, SetLockOrientationInDialog(oDead_duck_2, 1));
						AssignCommand(o203_t1n1, CutsceneAttack(oDead_duck_2, 217, 1, 1000));
					}
				}
				break;
			case 4:
				{
					object oWP_tiny_flees = GetObjectByTag("WP_tiny_flees", 0);
					if (GetIsObjectValid(oWP_tiny_flees)) {
						AssignCommand(o203_t1n1, ClearAllActions());
						vector struct10 = GetPositionFromLocation(GetLocation(GetFirstPC()));
						AssignCommand(o203_t1n1, ActionDoCommand(SetFacingPoint(struct10)));
						DelayCommand(1.0, AssignCommand(o203_t1n1, ActionForceMoveToObject(oWP_tiny_flees, 1, 1.0, 30.0)));
					}
				}
				break;
			case 5:
				{
					object oCzerkam = GetObjectByTag("czerkam", 0);
					AssignCommand(oCzerkam, ActionCloseDoor(oCzerkam));
				}
				break;
			case 6:
				SetGlobalNumber("203TEL_T1N1_Done", 1);
				DestroyObject(o203_t1n1, 0.0, 0, 0.0, 0);
				break;
			case 7:
				vector struct12 = GetPositionFromLocation(GetLocation(GetObjectByTag("203_t1n1", 0)));
				AssignCommand(GetObjectByTag("dead_duck_1", 0), ActionDoCommand(SetFacingPoint(struct12)));
				AssignCommand(GetObjectByTag("dead_duck_1", 0), SetLockOrientationInDialog(GetObjectByTag("dead_duck_1", 0), 1));
				break;
		}
	}
	else {
		AurPostString("No Tiny around.", 5, 6, 5.0);
	}
}
