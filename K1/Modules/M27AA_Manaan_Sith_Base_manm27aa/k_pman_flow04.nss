void main() {
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
	
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_PLOT_MAN_SONIC_WAVE), GetLocation(GetFirstPC()));
}
