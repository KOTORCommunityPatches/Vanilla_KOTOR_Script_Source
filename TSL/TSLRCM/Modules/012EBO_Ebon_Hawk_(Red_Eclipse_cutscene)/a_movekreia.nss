void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oWp_kreia_001 = GetWaypointByTag("wp_kreia_001");
	location location1 = GetLocation(oWp_kreia_001);
	AssignCommand(oKreia, ActionForceMoveToLocation(location1, 0, 30.0));
}