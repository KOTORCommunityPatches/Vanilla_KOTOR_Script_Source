void main() {
	
	object oSelf = OBJECT_SELF;
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), GetPCSpeaker(), 0.5);
	DelayCommand(1.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), GetPCSpeaker(), 0.5));
	DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), GetPCSpeaker(), 0.5));
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}