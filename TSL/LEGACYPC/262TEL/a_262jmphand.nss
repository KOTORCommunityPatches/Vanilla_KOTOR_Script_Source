void main() {
	object oWP_Handmaiden_1 = GetWaypointByTag("WP_Handmaiden_1");
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	AssignCommand(oHandmaiden, ClearAllActions());
	AssignCommand(oHandmaiden, ActionJumpToObject(oWP_Handmaiden_1, 1));
	object oWP_PC_Atris_End = GetWaypointByTag("WP_PC_Atris_End");
	AssignCommand(GetFirstPC(), ActionJumpToObject(oWP_PC_Atris_End, 1));
}

