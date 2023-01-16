void MoveGuard() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("lev40_wpescape3", 0));
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("lev40_wpjoleeout", 0))));
}

void main() {
	
	object oDoor = GetNearestObjectByTag("lev40_cell08", OBJECT_SELF, 1);
	object oGuard = GetObjectByTag("levguard403", 0);
	
	AssignCommand(oGuard, MoveGuard());
	
	DelayCommand(4.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	ActionPauseConversation();
	ActionWait(7.0);
	ActionResumeConversation();
}
