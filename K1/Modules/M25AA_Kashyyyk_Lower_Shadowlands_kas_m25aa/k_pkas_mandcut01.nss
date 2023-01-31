void main() {
	
	object oWook = GetObjectByTag("kas25_hurt_01", 0);
	object oMando01 = GetObjectByTag("kas25_mandalor05", 0);
	
	ActionPauseConversation();
	
	SetMinOneHP(oMando01, FALSE);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectAssuredHit(), oWook, 4.0);
	
	DelayCommand(1.0, SetDialogPlaceableCamera(10));
	DelayCommand(5.8, ActionResumeConversation());
	DelayCommand(5.9, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oMando01));
}