void main() {
	
	ActionPauseConversation();
	
	ActionMoveToObject(GetObjectByTag("mission", 0));
	
	ActionResumeConversation();
}