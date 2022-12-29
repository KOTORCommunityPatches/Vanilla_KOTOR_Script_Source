void main() {
	
	object oGizka = GetNearestObjectByTag("gizka", OBJECT_SELF, 1);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oGizka);
	
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}
