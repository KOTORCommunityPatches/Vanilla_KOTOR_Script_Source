void main() {
	object oQuello = GetObjectByTag("Quello", 0);
	object oWP_Quello_Walk1 = GetWaypointByTag("WP_Quello_Walk1");
	location location1 = GetLocation(oWP_Quello_Walk1);
	AssignCommand(oQuello, ActionMoveToLocation(location1, 1));
}