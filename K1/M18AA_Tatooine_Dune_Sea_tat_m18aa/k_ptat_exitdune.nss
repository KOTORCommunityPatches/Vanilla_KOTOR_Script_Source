void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oNearestTat18_leavedune = GetNearestObjectByTag("tat18_leavedune", oNPC, 1);
	AssignCommand(oNPC, ActionJumpToObject(oNearestTat18_leavedune, 1));
	AssignCommand(object3, ActionJumpToObject(oNearestTat18_leavedune, 1));
	AssignCommand(object5, ActionJumpToObject(oNearestTat18_leavedune, 1));
}
