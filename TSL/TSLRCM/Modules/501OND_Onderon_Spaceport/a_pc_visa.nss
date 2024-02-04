void main() {
	CreateItemOnObject("firstnamesstarpo", GetFirstPC(), 1, 0);
	ActionMoveToObject(GetWaypointByTag("wp_portm"), 0, 1.0);
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_pc1"), 0, 1.0));
}