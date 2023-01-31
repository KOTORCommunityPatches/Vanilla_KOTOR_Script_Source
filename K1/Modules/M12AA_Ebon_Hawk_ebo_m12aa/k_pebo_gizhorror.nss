void main() {
	
	object oSelf = OBJECT_SELF;
	
	PlaySound("cs_gizkabeg");
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), GetPCSpeaker(), 2.0));
	
	ActionPauseConversation();
	ActionWait(1.5);
	ActionResumeConversation();
}