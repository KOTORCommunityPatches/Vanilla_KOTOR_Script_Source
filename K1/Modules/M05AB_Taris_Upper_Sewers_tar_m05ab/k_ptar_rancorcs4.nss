void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(TRUE, TRUE), oStampy);
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	GivePlotXP("tar_misc", 20);
}