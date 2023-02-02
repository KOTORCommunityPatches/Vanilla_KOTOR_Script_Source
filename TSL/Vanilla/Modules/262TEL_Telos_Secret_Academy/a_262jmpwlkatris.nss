void main() {
	object oWP_Atris_6 = GetWaypointByTag("WP_Atris_6");
	object oWP_Atris_5 = GetWaypointByTag("WP_Atris_5");
	object oAtris = GetObjectByTag("Atris", 0);
	location location1 = GetLocation(oWP_Atris_6);
	AssignCommand(oAtris, ClearAllActions());
	AssignCommand(oAtris, ActionJumpToObject(oWP_Atris_5, 1));
	AssignCommand(oAtris, ActionMoveToLocation(location1, 0));
}
