void main() {
	SetLockHeadFollowInDialog(GetFirstPC(), 0);
	object oHK50 = GetObjectByTag("HK50", 0);
	object oWP_HK50_INTRO_PC2 = GetObjectByTag("WP_HK50_INTRO_PC2", 0);
	location location1 = GetLocation(oWP_HK50_INTRO_PC2);
	DelayCommand(0.5, AssignCommand(oHK50, ActionMoveToLocation(Location(Vector((-92.14206), (-3.33697), 22.375), 0.0), 0)));
	vector struct3 = GetPositionFromLocation(location1);
	DelayCommand(2.0, AssignCommand(OBJECT_SELF, SetFacingPoint(struct3)));
}