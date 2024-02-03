void main() {
	object oWP_atton_cut_3 = GetWaypointByTag("WP_atton_cut_3");
	AssignCommand(GetObjectByTag("BaoDur", 0), ActionMoveToObject(oWP_atton_cut_3, 1, 3.5));
}

