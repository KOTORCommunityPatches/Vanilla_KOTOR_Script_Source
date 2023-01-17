// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	AurPostString("*** inside call to jump apt", 5, 17, 10.0);
	object oMira = GetObjectByTag("Mira", 0);
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	object oWP_PC_MIRA_APT_0 = GetObjectByTag("WP_PC_MIRA_APT_0", 0);
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(oWP_PC_MIRA_APT_0)));
	AssignCommand(oMira, ClearAllActions());
	object oWP_MIRA_MIRA_APT_0 = GetObjectByTag("WP_MIRA_MIRA_APT_0", 0);
	AssignCommand(oMira, ActionJumpToLocation(GetLocation(oWP_MIRA_MIRA_APT_0)));
	AssignCommand(oInvisoKreia, ClearAllActions());
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, AssignCommand(oInvisoKreia, ActionStartConversation(oPC, "MiraApt", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

void sub2() {
	AurPostString("*** inside call to jump to Jekk", 5, 17, 10.0);
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	object oWP_PC_HAN_JEKK_0 = GetObjectByTag("WP_PC_HAN_JEKK_0", 0);
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(oWP_PC_HAN_JEKK_0)));
	if (GetIsObjectValid(GetObjectByTag("Hanharr", 0))) {
		DelayCommand(1.0, DestroyObject(GetObjectByTag("Hanharr", 0), 0.0, 0, 0.0, 0));
	}
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

void sub1() {
	AurPostString("*** inside call to swap pc", 5, 15, 10.0);
	SwitchPlayerCharacter((-1));
	AurPostString("*** we're not crashing in switch player", 6, 16, 10.0);
}

void main() {
	AurPostString("a_miraapatconv: entered script", 5, 15, 5.0);
	object oEntering = GetEnteringObject();
	if ((GetGlobalNumber("301NAR_Mira_Warning") == 0)) {
		return;
	}
	AurPostString("Mira Warning != 0", 5, 16, 5.0);
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	AurPostString("31!", 5, 17, 5.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	AssignCommand(oEntering, ClearAllActions());
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 1)) {
		DelayCommand(1.0, sub1());
		AurPostString("Hanharr", 12, 12, 4.0);
		DelayCommand(2.0, sub2());
	}
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 0)) {
		DelayCommand(1.0, sub1());
		AurPostString("Mira", 12, 12, 4.0);
		DelayCommand(2.0, sub3());
	}
}

