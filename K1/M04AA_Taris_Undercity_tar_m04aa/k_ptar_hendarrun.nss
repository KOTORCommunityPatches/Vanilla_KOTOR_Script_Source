void main() {
	
	ActionPauseConversation();
	
	AssignCommand(GetObjectByTag("OutcastMan046", 0), ActionMoveToObject(GetObjectByTag("tar04_hendarstop", 0), TRUE));
	
	ActionWait(5.0);
	ActionResumeConversation();
}
