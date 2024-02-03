void main() {
	object oAtris = GetObjectByTag("Atris", 0);
	object oWP_Atris_1 = GetWaypointByTag("WP_Atris_1");
	object oWP_Atris_2 = GetWaypointByTag("WP_Atris_2");
	object oWP_Atris_3 = GetWaypointByTag("WP_Atris_3");
	object oWP_Atris_4 = GetWaypointByTag("WP_Atris_4");
	object oWP_Atris_5 = GetWaypointByTag("WP_Atris_5");
	location location1 = GetLocation(oWP_Atris_1);
	location location3 = GetLocation(oWP_Atris_2);
	location location5 = GetLocation(oWP_Atris_3);
	location location7 = GetLocation(oWP_Atris_4);
	location location9 = GetLocation(oWP_Atris_5);
	SetLockOrientationInDialog(oAtris, 1);
	AssignCommand(oAtris, ActionMoveToLocation(location1, 0));
}

