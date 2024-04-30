struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(2.0, SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0));
	object oWP_ATTON_FREE = GetWaypointByTag("WP_ATTON_FREE");
	DelayCommand(2.0, AssignCommand(OBJECT_SELF, ActionJumpToObject(oWP_ATTON_FREE, 1)));
	vector vPosition = GetPosition(OBJECT_SELF);
				;
;
}

