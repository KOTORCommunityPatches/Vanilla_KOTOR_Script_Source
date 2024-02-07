void main() {
	object oWp_cut_kreia = GetWaypointByTag("wp_cut_kreia");
	object oWp_cut_pc = GetWaypointByTag("wp_cut_pc");
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, JumpToLocation(GetLocation(oWp_cut_kreia)));
	AssignCommand(GetPCSpeaker(), JumpToLocation(GetLocation(oWp_cut_pc)));
}

