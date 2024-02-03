struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oWP_HK50_INTRO_PC2 = GetObjectByTag("WP_HK50_INTRO_PC1", 0);
	location location1 = GetLocation(oWP_HK50_INTRO_PC2);
	AssignCommand(GetFirstPC(), ActionJumpToLocation(location1));
	oWP_HK50_INTRO_PC2 = GetObjectByTag("WP_HK50_INTRO_PC2", 0);
	location1 = GetLocation(oWP_HK50_INTRO_PC2);
	DelayCommand(0.5, AssignCommand(GetFirstPC(), ActionMoveToLocation(location1, 0)));
	vector struct2 = GetPositionFromLocation(location1);
				;
;
}

