void main() {
	object oWP_ESCAPE_1 = GetWaypointByTag("WP_ESCAPE_1");
	AssignCommand(OBJECT_SELF, ActionMoveToObject(oWP_ESCAPE_1, 1, 1.0));
	AssignCommand(GetPCSpeaker(), ActionMoveToObject(oWP_ESCAPE_1, 1, 1.0));
	SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(3.0, SetDialogPlaceableCamera(2));
	DelayCommand(3.0, SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0));
	object oWP_ESCAPE_2_ENTRY_ATTON = GetWaypointByTag("WP_ESCAPE_2_ENTRY_ATTON");
	object oWP_ESCAPE_2_ENTRY_PC = GetWaypointByTag("WP_ESCAPE_2_ENTRY_PC");
	AssignCommand(OBJECT_SELF, ActionJumpToObject(oWP_ESCAPE_2_ENTRY_ATTON, 1));
	AssignCommand(GetPCSpeaker(), ActionJumpToObject(oWP_ESCAPE_2_ENTRY_PC, 1));
	object oWP_ESCAPE_2_CONSOLE_ATTON = GetWaypointByTag("WP_ESCAPE_2_CONSOLE_ATTON");
	object oWP_ESCAPE_2_CONSOLE_PC = GetWaypointByTag("WP_ESCAPE_2_CONSOLE_PC");
	DelayCommand(1.0, AssignCommand(OBJECT_SELF, ActionMoveToObject(oWP_ESCAPE_2_CONSOLE_ATTON, 1, 1.0)));
	DelayCommand(1.0, AssignCommand(GetPCSpeaker(), ActionMoveToObject(oWP_ESCAPE_2_CONSOLE_PC, 1, 1.0)));
	vector vPosition = GetPosition(GetPCSpeaker());
	AssignCommand(OBJECT_SELF, SetFacingPoint(vPosition));
	vector struct4 = GetPosition(OBJECT_SELF);
	AssignCommand(GetPCSpeaker(), SetFacingPoint(struct4));
}
