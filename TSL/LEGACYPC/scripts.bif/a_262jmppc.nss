void main() {
	object oWP_PC_Council = GetWaypointByTag("WP_PC_Council");
	AssignCommand(GetFirstPC(), ActionJumpToObject(oWP_PC_Council, 1));
}

