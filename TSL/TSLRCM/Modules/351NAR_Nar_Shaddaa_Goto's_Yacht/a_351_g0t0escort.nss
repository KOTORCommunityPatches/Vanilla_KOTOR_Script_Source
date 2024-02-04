void main() {
	object oDrdSentry1 = GetObjectByTag("DrdSentry1", 0);
	object oDrdSentry2 = GetObjectByTag("DrdSentry2", 0);
	object oWP_G0T0DROID_1 = GetWaypointByTag("WP_G0T0DROID_1");
	object oWP_G0T0DROID_2 = GetWaypointByTag("WP_G0T0DROID_2");
	location location1 = GetLocation(oWP_G0T0DROID_1);
	location location3 = GetLocation(oWP_G0T0DROID_2);
	AssignCommand(oDrdSentry1, ActionMoveToLocation(location1, 0));
	AssignCommand(oDrdSentry2, ActionMoveToLocation(location3, 0));
}