void main() {
	
	object oWP01 = GetObjectByTag("lev40_wpequipdoor", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oDoor = GetNearestObjectByTag("lev_stddoor", OBJECT_SELF, 1);
	
	AssignCommand(oBastila, ActionMoveToObject(oWP01, TRUE, 2.0));
	DelayCommand(1.0, AssignCommand(oCarth, ActionMoveToObject(oWP01, TRUE, 2.0)));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionMoveToObject(oWP01, TRUE, 2.0)));
	DelayCommand(1.0, AssignCommand(oDoor, ActionOpenDoor(oDoor)));
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}
