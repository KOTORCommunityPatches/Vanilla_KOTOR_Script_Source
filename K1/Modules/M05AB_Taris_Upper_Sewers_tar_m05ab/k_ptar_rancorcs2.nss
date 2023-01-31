void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	
	ActionPauseConversation();
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectChoke(), oStampy, 3.0);
	// 1045 = VFX_PLOT_TAR_RANCOR_DEATH in visualeffects.2da
	DelayCommand(0.7, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(1045), oStampy));
	PlaySound("cb_gr_fragment");
	PlaySound("c_rancor_bat2");
	ActionWait(3.0);
	ActionResumeConversation();
}