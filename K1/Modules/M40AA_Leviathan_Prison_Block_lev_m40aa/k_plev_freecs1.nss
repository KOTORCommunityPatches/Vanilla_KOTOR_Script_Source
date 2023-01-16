void main() {
	
	object oWP02 = GetObjectByTag("lev40_wpequiproom", 0);
	object oWP03 = GetObjectByTag("lev40_wpequiprooma", 0);
	object oWP04 = GetObjectByTag("lev40_wpequiproomb", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oDoor = GetNearestObjectByTag("lev_impdoor", OBJECT_SELF, 1);
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	
	AssignCommand(oBastila, ActionMoveToObject(oWP02, TRUE, 2.0));
	DelayCommand(1.0, AssignCommand(oCarth, ActionMoveToObject(oWP03, TRUE, 2.0)));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionMoveToObject(oWP04, TRUE, 2.0)));
	
	SetGlobalFadeOut(5.0, 1.0);
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}
