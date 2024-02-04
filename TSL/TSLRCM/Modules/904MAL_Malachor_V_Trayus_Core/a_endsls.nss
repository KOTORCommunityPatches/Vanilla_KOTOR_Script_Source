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
int sub4();
int sub3();
int sub2();
int sub1();

int sub4() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub3() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub2() {
	if ((sub3() || sub4())) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub1() {
	return (sub2() || (GetGlobalNumber("000_Remote_Dead") == 1));
}

void main() {
	DestroyObject(GetObjectByTag("Kreia", 0), 0.0, 0, 0.0, 0);
	object oPC = GetFirstPC();
	location location1 = Location(Vector((-1.07035), 0.52382, 2.2575), 286.021);
	if ((((((GetInfluence(4) > GetInfluence(9)) && (GetGlobalNumber("000_Handmaiden_Dead") == 0)) && IsAvailableCreature(4)) && sub1()) && (GetGlobalNumber("906_HandDisc_Free") == 1))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		object object4 = SpawnAvailableNPC(4, Location(Vector(0.93793, (-5.29944), 1.70061), 98.8933));
		AssignCommand(oPC, ActionJumpToLocation(location1));
		AssignCommand(object4, ActionStartConversation(oPC, "904end", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetGlobalFadeIn(0.6, 2.0, 0.0, 0.0, 0.0);
	}
	else {
		if (((((GetGlobalNumber("000_Visas_Dead") == 0) && IsAvailableCreature(9)) && sub1()) && (GetGlobalNumber("906_Visas_Free") == 1))) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			object object6 = SpawnAvailableNPC(9, Location(Vector(0.93793, (-5.29944), 1.70061), 98.8933));
			AssignCommand(oPC, ActionJumpToLocation(location1));
			AssignCommand(object6, ActionStartConversation(oPC, "904end", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetGlobalFadeIn(0.6, 2.0, 0.0, 0.0, 0.0);
		}
		else {
			if (((GetGlobalNumber("903_Atton_Sion") != 2) && IsAvailableCreature(0))) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ClearAllEffects());
				DelayCommand(0.1, ClearAllActions());
				object object8 = SpawnAvailableNPC(0, Location(Vector((-2.59703), (-37.46189), 0.4746), 85.155));
				AssignCommand(object8, ActionPlayAnimation(31, 1.0, (-1.0)));
				AssignCommand(object8, ActionStartConversation(GetFirstPC(), "904atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
			}
			else {
				if (((GetGlobalNumber("903_Atton_Sion") == 2) && IsAvailableCreature(0))) {
					SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oPC, ClearAllEffects());
					object object11 = SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP_ATTON_DEAD", 0)));
					object oAtton = GetObjectByTag("atton", 0);
					AssignCommand(oAtton, ActionStartConversation(oPC, "904atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
					SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
				}
				else {
					SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
					object oP_kreia = CreateObject(1, "p_kreia", GetLocation(oPC), 0);
					AssignCommand(oP_kreia, ActionStartConversation(oPC, "end_game", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
		}
	}
}