void main() {
	ClearAllActions();
	AssignCommand(GetObjectByTag("om_scout2", 0), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetWaypointByTag("wp_scout1_pc"), 1));
}
