void main() {
	object oWP_PC_1 = GetWaypointByTag("WP_PC_1");
	location location1 = GetLocation(oWP_PC_1);
	AssignCommand(GetFirstPC(), ActionMoveToLocation(location1, 0));
}

