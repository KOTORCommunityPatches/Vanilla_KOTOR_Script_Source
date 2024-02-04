void main() {
	ActionJumpToObject(GetWaypointByTag("WP_KUMUSFREE"), 1);
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetWaypointByTag("WP_KUMUSFREE_3"), 1));
	SetGlobalNumber("403DXN_Missing_Mand", 3);
	DelayCommand(0.1, SetFacing(315.0));
	DelayCommand(0.1, AssignCommand(GetFirstPC(), SetFacing(135.0)));
}