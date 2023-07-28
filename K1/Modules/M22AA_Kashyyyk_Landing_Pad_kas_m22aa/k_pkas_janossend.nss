void main() {
	
	object oWP = GetWaypointByTag("WP_kas22_janos_01_01");
	
	ActionJumpToObject(oWP, TRUE);
	ActionDoCommand(SetFacing(GetFacing(oWP)));
}
