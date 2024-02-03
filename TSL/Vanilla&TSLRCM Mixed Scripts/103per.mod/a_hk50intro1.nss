void main() {
	object oWP_01_01 = GetObjectByTag("WP_01_01", 0);
	location location1 = GetLocation(oWP_01_01);
	AssignCommand(GetObjectByTag("HK50", 0), ActionMoveToLocation(location1, 0));
	DelayCommand(5.0, AssignCommand(OBJECT_SELF, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("WP_HK50_INTRO_PC2", 0))))));
}

