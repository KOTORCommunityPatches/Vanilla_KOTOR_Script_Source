void main() {
	SetLockHeadFollowInDialog(GetFirstPC(), 0);
	object oWP_HK50_INTRO_PC2 = GetObjectByTag("WP_HK50_INTRO_PC2", 0);
	location location1 = GetLocation(oWP_HK50_INTRO_PC2);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("HK50", 0), ActionMoveToLocation(location1, 0)));
	vector struct2 = GetPositionFromLocation(location1);
	DelayCommand(2.0, AssignCommand(OBJECT_SELF, SetFacingPoint(struct2)));
}
