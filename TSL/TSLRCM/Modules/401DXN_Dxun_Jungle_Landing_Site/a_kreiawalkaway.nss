void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oWP_Kreia_1 = GetWaypointByTag("WP_Kreia_1");
	location location1 = GetLocation(oWP_Kreia_1);
	AssignCommand(oKreia, ActionMoveToLocation(location1, 0));
}