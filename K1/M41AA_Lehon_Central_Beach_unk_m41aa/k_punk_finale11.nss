void main() {
	
	ActionPauseConversation();
	
	AssignCommand(GetPCSpeaker(), ActionMoveToObject(GetObjectByTag("carth", 0), TRUE));
	
	ActionWait(1.0);
	ActionResumeConversation();
}
