void main() {
	object oAtris = GetObjectByTag("Atris", 0);
	object oWP_Atris_4 = GetWaypointByTag("WP_Atris_4");
	location location1 = GetLocation(oWP_Atris_4);
	AssignCommand(oAtris, ActionMoveToLocation(location1, 0));
}
