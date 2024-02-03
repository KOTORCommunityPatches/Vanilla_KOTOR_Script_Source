// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;

// Prototypes
int sub1();

int sub1() {
	string string1;
	int nGlobal = GetGlobalNumber("604DAN_Vrook_Status");
	int int3 = GetGlobalNumber("601DAN_Side");
	int int5;
	if ((int3 == 2)) {
		string1 = "wp_vrook_dark_1";
		int5 = intGLOB_2;
	}
	else {
		if (((int3 == 1) && (nGlobal == 3))) {
			string1 = "wp_vrook_battle_1";
			int5 = intGLOB_3;
		}
		else {
			if (((nGlobal == 4) || (nGlobal == 6))) {
				string1 = "WP_MASTER_CUT_MASTER";
				int5 = intGLOB_4;
			}
			else {
				return intGLOB_1;
			}
		}
	}
	object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
	if ((!GetIsObjectValid(oNpc_vrook))) {
		CreateObject(1, "npc_vrook", GetLocation(GetObjectByTag(string1, 0)), 0);
		AssignCommand(oNpc_vrook, ClearAllActions());
	}
	else {
		AssignCommand(oNpc_vrook, ClearAllActions());
		AssignCommand(oNpc_vrook, ActionJumpToLocation(GetLocation(GetObjectByTag(string1, 0))));
	}
	return int5;
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (((GetGlobalNumber("601DAN_Side") && (!GetLocalBoolean(OBJECT_SELF, 50))) && (GetGlobalNumber("601DAN_Battle_Mili") >= 1))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		ExecuteScript("a_pre_battle", oEntering, 0xFFFFFFFF);
		if ((!GetGlobalBoolean("600DAN_Battle_Spawned"))) {
			ExecuteScript("k_setup_battle", OBJECT_SELF, 0xFFFFFFFF);
		}
		if ((GetGlobalNumber("000_Vrook_Dead") == 1)) {
			if (((GetGlobalNumber("601DAN_Side") == 2) && (GetGlobalNumber("601DAN_Battle_Mili") != 4))) {
				DestroyObject(GetObjectByTag("npc_zherron", 0), 0.0, 0, 0.0, 0);
			}
			object oNpc_azkul = GetObjectByTag("npc_azkul", 0);
			DelayCommand(1.0, AssignCommand(oNpc_azkul, ClearAllActions()));
			DelayCommand(1.0, AssignCommand(oEntering, ClearAllActions()));
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			SetLocalBoolean(OBJECT_SELF, 50, 1);
			DelayCommand(1.0, AssignCommand(oNpc_azkul, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			return;
		}
		int int8 = sub1();
		if ((int8 == intGLOB_1)) {
			AurPostString("ERROR: with vrook spawnings/movings notify TonyE or AnthonyD", 5, 15, 30.0);
			return;
		}
		else {
			if ((int8 == intGLOB_2)) {
				object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
				DelayCommand(1.0, AssignCommand(oNpc_vrook, ClearAllActions()));
				DelayCommand(1.0, AssignCommand(oEntering, ClearAllActions()));
				SetGlobalFadeIn(2.0, 1.0, 0.0, 0.0, 0.0);
				DelayCommand(1.0, AssignCommand(oNpc_vrook, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
			else {
				if ((int8 == intGLOB_3)) {
					object object9 = GetObjectByTag("npc_azkul", 0);
					DelayCommand(1.0, AssignCommand(object9, ClearAllActions()));
					DelayCommand(1.0, AssignCommand(oEntering, ClearAllActions()));
					SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
					SetLocalBoolean(OBJECT_SELF, 50, 1);
					DelayCommand(1.0, AssignCommand(object9, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				}
				else {
					if ((int8 == intGLOB_4)) {
						object object11 = GetObjectByTag("npc_azkul", 0);
						DelayCommand(1.0, AssignCommand(object11, ClearAllActions()));
						DelayCommand(1.0, AssignCommand(oEntering, ClearAllActions()));
						SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
						SetLocalBoolean(OBJECT_SELF, 50, 1);
						DelayCommand(1.0, AssignCommand(object11, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
					}
					else {
						SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
						SetLocalBoolean(OBJECT_SELF, 50, 1);
						AurPostString("ERROR: should not be here, 602DAN. Notify TonyE or AnthonyD", 5, 15, 30.0);
						return;
					}
				}
			}
		}
	}
}

