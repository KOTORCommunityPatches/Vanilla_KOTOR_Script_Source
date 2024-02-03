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
	int intGLOB_28 = 1001;
	int intGLOB_29 = 1002;
	int intGLOB_30 = 1003;
	int intGLOB_31 = 1004;
	int intGLOB_32 = 1005;
	int intGLOB_33 = 1006;
	int intGLOB_34 = 1007;
	int intGLOB_35 = 1008;
	int intGLOB_36 = 1009;
	int intGLOB_37 = 1010;
	int intGLOB_38 = 1011;
	int intGLOB_39 = 1012;
	int intGLOB_40 = 2001;
	int intGLOB_41 = 2002;
	int intGLOB_42 = 2003;
	int intGLOB_43 = 2004;
	int intGLOB_44 = 2005;
	int intGLOB_45 = 2006;
	int intGLOB_46 = 2007;
	int intGLOB_47 = 2008;
	int intGLOB_48 = 2009;
	int intGLOB_49 = 2010;
	int intGLOB_50 = 2011;
	int intGLOB_51 = 2012;
	int intGLOB_52 = 2013;
	int intGLOB_53 = 2014;
	int intGLOB_54 = 3001;
	int intGLOB_55 = 3002;
	int intGLOB_56 = 3003;
	int intGLOB_57 = 4001;

void main() {
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_34);
	IncrementGlobalNumber("601DAN_Dead_Merc", 1);
	if ((GetGlobalNumber("601DAN_Dead_Merc") == 14)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		object oPC = GetFirstPC();
		object oNPC = GetPartyMemberByIndex(1);
		object object5 = GetPartyMemberByIndex(2);
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(object5, ClearAllActions());
		DelayCommand(0.5, AssignCommand(GetObjectByTag("npc_azkul", 0), ActionStartConversation(oPC, "movie", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	else {
		if ((GetGlobalNumber("601DAN_Dead_Merc") == 28)) {
			AurPostString("MILITIA HAS BEGUN RETREAT SEQUENCE", 5, 21, 10.0);
			SetGlobalNumber("601DAN_Battle_Mili", 2);
			SetGlobalNumber("601DAN_Battle_Start", 2);
			ExecuteScript("a_mil_retreat", GetFirstPC(), 0xFFFFFFFF);
		}
	}
}

