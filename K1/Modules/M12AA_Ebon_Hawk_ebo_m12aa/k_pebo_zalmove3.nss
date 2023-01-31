void main() {
	
	ActionMoveToObject(GetObjectByTag("pebn_zaalbar3", 0), FALSE, 1.0);
	
	ActionPauseConversation();
	ActionWait(0.7);
	ActionResumeConversation();
}