void main() {
	
	SetGlobalFadeOut(0.0, 0.5);
	
	ActionPauseConversation();
	ActionWait(1.0);
	
	ActionJumpToObject(GetObjectByTag("tar04_wprukgencon", 0));
	
	ActionResumeConversation();
}
