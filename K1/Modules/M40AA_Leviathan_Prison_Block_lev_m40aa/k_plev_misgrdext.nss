void main() {
	
	object oDoor = GetNearestObjectByTag("lev40_cell08", OBJECT_SELF, 1);
	object oGuard = GetObjectByTag("levguard401", 0);
	
	ActionPauseConversation();
	
	DelayCommand(4.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	ActionMoveToObject(GetNearestObjectByTag("wp_guardext2", OBJECT_SELF, 1));
	
	ActionResumeConversation();
}
