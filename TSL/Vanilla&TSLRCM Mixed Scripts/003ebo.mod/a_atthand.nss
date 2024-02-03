struct structtype1 {
	float float1;
	float float3;
};

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
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oMaidInvis = GetObjectByTag("MaidInvis", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		ActionPauseConversation();
		SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
		ChangeToStandardFaction(oMaidInvis, 2);
		ChangeToStandardFaction(oHandmaiden, 4);
		SetLockOrientationInDialog(oHandmaiden, 1);
		AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 479, 4, 0)));
		GiveItem(GetItemInSlot(5, oAtton), GetFirstPC());
		AssignCommand(oAtton, ActionUnequipItem(GetItemInSlot(5, oAtton), 1));
		GiveItem(GetItemInSlot(4, oAtton), GetFirstPC());
		AssignCommand(oAtton, ActionUnequipItem(GetItemInSlot(4, oAtton), 1));
		DelayCommand(1.6, AssignCommand(oHandmaiden, ClearAllActions()));
		DelayCommand(1.6, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
		DelayCommand(3.5, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
		DelayCommand(4.0, ActionResumeConversation());
	}
	if ((nParam1 == 1)) {
		AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 478, 4, 0)));
		DelayCommand(1.6, AssignCommand(oHandmaiden, ClearAllActions()));
		DelayCommand(1.6, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
	}
	if ((nParam1 == 2)) {
		ActionPauseConversation();
		AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0));
		DelayCommand(1.0, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 478, 4, 0))));
		DelayCommand(1.5, AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(26.17571, 37.22036, 1.98865), (-3.05282)), 0)));
		DelayCommand(2.6, AssignCommand(oHandmaiden, ClearAllActions()));
		DelayCommand(2.6, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
		DelayCommand(5.5, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 481, 4, 0))));
		DelayCommand(6.6, AssignCommand(oHandmaiden, ClearAllActions()));
		DelayCommand(6.6, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
		DelayCommand(8.7, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 477, 4, 0))));
		DelayCommand(10.2, AssignCommand(oHandmaiden, ClearAllActions()));
		DelayCommand(10.2, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
		DelayCommand(9.5, SetLockOrientationInDialog(oAtton, 1));
		DelayCommand(10.0, ActionResumeConversation());
	}
	if ((nParam1 == 3)) {
		ActionPauseConversation();
		DelayCommand(1.5, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 479, 4, 0))));
		DelayCommand(2.1, AssignCommand(oHandmaiden, ClearAllActions()));
		DelayCommand(0.5, AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(32.48949, 32.13533, 1.755), (-0.93967)), 0)));
		DelayCommand(5.8, ActionResumeConversation());
	}
	if ((nParam1 == 4)) {
		ActionPauseConversation();
		SetLockOrientationInDialog(oHandmaiden, 0);
		SetLockOrientationInDialog(oAtton, 0);
		AssignCommand(GetObjectByTag("Handmaiden", 0), SetFacingPoint(GetPosition(GetObjectByTag("Atton", 0))));
		AssignCommand(oHandmaiden, ActionPlayAnimation(10477, 1.0, 0.0));
		AssignCommand(oAtton, ClearAllActions());
		SetLockOrientationInDialog(oAtton, 0);
		AssignCommand(GetObjectByTag("Atton", 0), SetFacingPoint(GetPosition(GetObjectByTag("Handmaiden", 0))));
		AssignCommand(oAtton, ActionPlayAnimation(10482, 1.0, 0.0));
		DelayCommand(1.8, ActionResumeConversation());
	}
	if ((nParam1 == 5)) {
		ActionPauseConversation();
		AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(37.16882, 30.60567, 1.755), 3.1061), 0));
		DelayCommand(3.5, ActionResumeConversation());
	}
	if ((nParam1 == 6)) {
		ActionPauseConversation();
		AssignCommand(GetObjectByTag("Atton", 0), SetFacingPoint(GetPosition(GetObjectByTag("Handmaiden", 0))));
		DelayCommand(2.0, ActionResumeConversation());
	}
	if ((nParam1 == 7)) {
		ActionPauseConversation();
		DelayCommand(2.0, AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(38.88894, 32.99442, 1.8), 1.30568), 0)));
		DelayCommand(0.6, ActionResumeConversation());
	}
	if ((nParam1 == 8)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		AssignCommand(oHandmaiden, ClearAllActions());
		GiveItem(GetItemInSlot(1, oHandmaiden), GetFirstPC());
		GiveItem(GetItemInSlot(5, oHandmaiden), GetFirstPC());
		AssignCommand(oAtton, ActionUnequipItem(GetItemInSlot(5, oHandmaiden), 1));
		GiveItem(GetItemInSlot(4, oHandmaiden), GetFirstPC());
		AssignCommand(oAtton, ActionUnequipItem(GetItemInSlot(4, oHandmaiden), 1));
		AssignCommand(oHandmaiden, ActionUnequipItem(GetItemInSlot(1, oHandmaiden), 1));
	}
}

