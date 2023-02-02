void main() {
	object oWP_PC_Atris_End = GetWaypointByTag("WP_PC_Atris_End");
	AssignCommand(GetFirstPC(), ActionJumpToObject(oWP_PC_Atris_End, 1));
}
