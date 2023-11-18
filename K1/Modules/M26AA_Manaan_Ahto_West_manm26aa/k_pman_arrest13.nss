void main() {
	
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_PRO_LIGHTNING_L), GetFirstPC());
	
	AssignCommand(GetFirstPC(), ActionPlayAnimation(ANIMATION_LOOPING_SPASM, 1.0, 5.0));
	
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}
