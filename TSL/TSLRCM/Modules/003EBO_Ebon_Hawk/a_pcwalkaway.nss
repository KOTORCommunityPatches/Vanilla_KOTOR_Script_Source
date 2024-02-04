void main() {
	object oWP_from_outside = GetWaypointByTag("WP_from_outside");
	location location1 = GetLocation(oWP_from_outside);
	AssignCommand(GetFirstPC(), ActionMoveToLocation(location1, 0));
}