void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((GetGlobalNumber("601DAN_Battle_Mili") == 0) || (GetGlobalNumber("601DAN_Battle_Mili") == 4))) {
	}
	else {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oWP_W_NPC1 = GetObjectByTag("WP_W_NPC1", 0);
		object oWP_W_NPC2 = GetObjectByTag("WP_W_NPC2", 0);
		object oWP_W_NPC3 = GetObjectByTag("WP_W_NPC3", 0);
		object oNPC = GetPartyMemberByIndex(0);
		object object11 = GetPartyMemberByIndex(1);
		object object13 = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWP_W_NPC1)));
		}
		if (GetIsObjectValid(object11)) {
			AssignCommand(object11, ClearAllActions());
			AssignCommand(object11, ActionJumpToLocation(GetLocation(oWP_W_NPC2)));
		}
		if (GetIsObjectValid(object13)) {
			AssignCommand(object13, ClearAllActions());
			AssignCommand(object13, ActionJumpToLocation(GetLocation(oWP_W_NPC3)));
		}
		SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
	}
}