struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oWP_ESCAPE_1 = GetWaypointByTag("WP_ESCAPE_1");
	object oWP_ESCAPE_2 = GetWaypointByTag("WP_ESCAPE_2");
	DelayCommand(0.5, AssignCommand(OBJECT_SELF, ActionMoveToObject(oWP_ESCAPE_1, 1, 1.0)));
	DelayCommand(0.5, AssignCommand(GetPCSpeaker(), ActionMoveToObject(oWP_ESCAPE_2, 1, 1.0)));
	SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(3.0, SetDialogPlaceableCamera(2));
	DelayCommand(3.0, SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0));
	object oWP_ESCAPE_2_ENTRY_ATTON = GetWaypointByTag("WP_ESCAPE_2_ENTRY_ATTON");
	object oWP_ESCAPE_2_ENTRY_PC = GetWaypointByTag("WP_ESCAPE_2_ENTRY_PC");
	DelayCommand(0.5, AssignCommand(OBJECT_SELF, ActionJumpToObject(oWP_ESCAPE_2_ENTRY_ATTON, 1)));
	DelayCommand(0.5, AssignCommand(GetPCSpeaker(), ActionJumpToObject(oWP_ESCAPE_2_ENTRY_PC, 1)));
	object oWP_ESCAPE_2_CONSOLE_ATTON = GetWaypointByTag("WP_ESCAPE_2_CONSOLE_ATTON");
	object oWP_ESCAPE_2_CONSOLE_PC = GetWaypointByTag("WP_ESCAPE_2_CONSOLE_PC");
	DelayCommand(2.5, AssignCommand(OBJECT_SELF, ActionMoveToObject(oWP_ESCAPE_2_CONSOLE_ATTON, 1, 1.0)));
	DelayCommand(2.5, AssignCommand(GetPCSpeaker(), ActionMoveToObject(oWP_ESCAPE_2_CONSOLE_PC, 1, 1.0)));
	vector vPosition = GetPosition(OBJECT_SELF);
	;
}

