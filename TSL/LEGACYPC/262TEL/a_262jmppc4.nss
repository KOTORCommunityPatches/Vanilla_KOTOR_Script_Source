void main() {
	object oWP_PC_Atris_End4 = GetWaypointByTag("WP_PC_Atris_End4");
	object oSister1 = GetObjectByTag("Sister1", 0);
	object oSister2 = GetObjectByTag("Sister2", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oWP_Hand_Atris_1_4 = GetWaypointByTag("WP_Hand_Atris_1_4");
	object oWP_Hand_Atris_2_4 = GetWaypointByTag("WP_Hand_Atris_2_4");
	object oWP_Handmaiden_2 = GetWaypointByTag("WP_Handmaiden_2");
	AssignCommand(oHandmaiden, ActionJumpToObject(oWP_Handmaiden_2, 1));
}

