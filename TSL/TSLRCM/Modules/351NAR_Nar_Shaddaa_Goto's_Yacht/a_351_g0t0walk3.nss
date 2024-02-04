void main() {
	object oG0T0Temp = GetObjectByTag("G0T0Temp", 0);
	object oWP_G0T0_1 = GetWaypointByTag("WP_G0T0_1");
	object oWP_G0T0_2 = GetWaypointByTag("WP_G0T0_2");
	object oWP_G0T0_3 = GetWaypointByTag("WP_G0T0_3");
	location location1 = GetLocation(oWP_G0T0_1);
	location location3 = GetLocation(oWP_G0T0_2);
	location location5 = GetLocation(oWP_G0T0_3);
	AssignCommand(oG0T0Temp, ActionMoveToLocation(location5, 0));
}