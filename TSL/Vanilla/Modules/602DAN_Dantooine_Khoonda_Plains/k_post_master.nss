void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	if ((GetGlobalNumber("601DAN_Battle_Mili") < 4)) {
		AssignCommand(oPC, ClearAllActions());
		DelayCommand(1.0, AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("From_Battle_PC", 0)))));
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			DelayCommand(1.0, AssignCommand(oNPC, ActionJumpToLocation(GetLocation(GetObjectByTag("From_Battle_NPC1", 0)))));
		}
		if (GetIsObjectValid(object5)) {
			AssignCommand(object5, ClearAllActions());
			DelayCommand(1.0, AssignCommand(object5, ActionJumpToLocation(GetLocation(GetObjectByTag("From_Battle_NPC2", 0)))));
		}
	}
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}
