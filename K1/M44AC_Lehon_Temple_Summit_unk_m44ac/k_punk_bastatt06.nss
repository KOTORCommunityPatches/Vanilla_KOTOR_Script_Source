void main() {
	
	ActionPauseConversation();
	
	SetLightsaberPowered(OBJECT_SELF, TRUE, TRUE, TRUE);
	
	ActionWait(2.0);
	ActionResumeConversation();
}
