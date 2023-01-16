void main() {
	
	AssignCommand(GetObjectByTag("mission", 0), ActionMoveToObject(GetObjectByTag("lev40_wpmisincell", 0)));
	
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
}
