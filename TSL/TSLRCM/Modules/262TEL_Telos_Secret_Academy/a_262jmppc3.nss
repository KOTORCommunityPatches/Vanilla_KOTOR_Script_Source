void main() {
	object oWP_PC_Atris_End2 = GetWaypointByTag("WP_PC_Atris_End2");
	AssignCommand(GetFirstPC(), ActionJumpToObject(oWP_PC_Atris_End2, 1));
}