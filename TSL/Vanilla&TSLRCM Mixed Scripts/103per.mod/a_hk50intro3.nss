struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetLockHeadFollowInDialog(GetFirstPC(), 1);
	object oHK50 = GetObjectByTag("HK50", 0);
	object oWP_HK50_INTRO_PC1 = GetObjectByTag("WP_HK50_INTRO_PC1", 0);
	location location1 = GetLocation(oWP_HK50_INTRO_PC1);
	AssignCommand(oHK50, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_HK50_INTRO_PC3", 0))));
	DelayCommand(2.5, AssignCommand(oHK50, ActionMoveToLocation(location1, 0)));
	object oWP_HK50_INTRO_PC2 = GetObjectByTag("WP_HK50_INTRO_PC2", 0);
	location location4 = GetLocation(oWP_HK50_INTRO_PC2);
	vector struct2 = GetPositionFromLocation(location4);
									;
;
;
}

