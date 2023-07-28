void main() {
	
	object oWP = GetWaypointByTag("WP_kas22_janos_01_01");
	
	ActionJumpToObject(oWP, TRUE);
	ActionDoCommand(SetFacing(GetFacing(oWP)));
	
	StartNewModule("ebo_m12aa", "K_EBN_RAMP_ENTRANCE");
}
