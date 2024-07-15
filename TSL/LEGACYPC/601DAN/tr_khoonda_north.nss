void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("601DAN_Battle_Mili") != 1)) {
		return;
	}
	else {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oWP_NORTH_DOOR_1 = GetObjectByTag("WP_NORTH_DOOR_1", 0);
		object oWP_NORTH_DOOR_2 = GetObjectByTag("WP_NORTH_DOOR_2", 0);
		object oWP_NORTH_DOOR_3 = GetObjectByTag("WP_NORTH_DOOR_3", 0);
		object oNPC = GetPartyMemberByIndex(0);
		object object11 = GetPartyMemberByIndex(1);
		object object13 = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWP_NORTH_DOOR_1)));
		}
		if (GetIsObjectValid(object11)) {
			AssignCommand(object11, ClearAllActions());
			AssignCommand(object11, ActionJumpToLocation(GetLocation(oWP_NORTH_DOOR_2)));
		}
		if (GetIsObjectValid(object13)) {
			AssignCommand(object13, ClearAllActions());
			AssignCommand(object13, ActionJumpToLocation(GetLocation(oWP_NORTH_DOOR_3)));
		}
		SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
	}
}

