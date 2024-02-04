void main() {
	object oRatrin = GetObjectByTag("Ratrin", 0);
	object oWp_ratrin_001 = GetWaypointByTag("wp_ratrin_001");
	location location1 = GetLocation(oWp_ratrin_001);
	AssignCommand(oRatrin, ActionMoveToLocation(location1, 0));
}