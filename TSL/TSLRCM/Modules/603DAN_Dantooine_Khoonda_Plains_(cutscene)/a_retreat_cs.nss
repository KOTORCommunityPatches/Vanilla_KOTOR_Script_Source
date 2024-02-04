// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
}

void main() {
	object oPC = GetFirstPC();
	object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
	object oNPC = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	object oWP_back_door = GetObjectByTag("WP_back_door", 0);
	object object11 = GetObjectByTag("WP_back_door", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			break;
		case 2:
			AssignCommand(oNpc_zherron, ClearAllActions());
			AssignCommand(oNpc_zherron, ActionForceMoveToLocation(GetLocation(oWP_back_door), 1, 30.0));
			sub1(oWP_back_door);
			break;
		case 3:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(object11), 1, 30.0));
			if (GetIsObjectValid(oNPC)) {
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionForceMoveToLocation(GetLocation(object11), 1, 30.0));
			}
			if (GetIsObjectValid(object7)) {
				AssignCommand(object7, ClearAllActions());
				AssignCommand(object7, ActionForceMoveToLocation(GetLocation(object11), 1, 30.0));
			}
			break;
		case 4:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(oWP_back_door), 1, 30.0));
			if (GetIsObjectValid(oNPC)) {
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionForceMoveToLocation(GetLocation(oWP_back_door), 1, 30.0));
			}
			if (GetIsObjectValid(object7)) {
				AssignCommand(object7, ClearAllActions());
				AssignCommand(object7, ActionForceMoveToLocation(GetLocation(oWP_back_door), 1, 30.0));
			}
			break;
		case 5:
			AssignCommand(oNpc_zherron, ClearAllActions());
			AssignCommand(oNpc_zherron, ActionForceMoveToLocation(GetLocation(object11), 1, 30.0));
			sub1(object11);
			break;
		case 6:
			if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
				StartNewModule("602DAN", "From_Battle_PC", "", "", "", "", "", "");
			}
			else {
				StartNewModule("602DAN", "From_Battle_PC", "", "", "", "", "", "");
			}
			break;
	}
}