void main() {
	
	ActionPauseConversation();
	
	ActionMoveToLocation(GetLocation(GetObjectByTag("bast2", 0)), TRUE);
	
	SetGlobalFadeOut(2.0, 1.0);
	
	ActionResumeConversation();
}
