void main() {
	
	object oShaardan = GetObjectByTag("kor35_shaardan", 0);
	effect eVFX = EffectVisualEffect(VFX_IMP_CHOKE);
	
	ActionPauseConversation();
	
	AssignCommand(oShaardan, ClearAllActions());
	ActionCastFakeSpellAtObject(FORCE_POWER_LIGHTNING, oShaardan);
	
	DelayCommand(1.0, AssignCommand(oShaardan, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 3.0)));
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oShaardan, 0.0));
	
	SetGlobalNumber("KOR_SHAARDAN_SWORD", 3);
	SetGlobalNumber("KOR33_SHAARDAN", 6);
	
	ActionWait(1.5);
	ActionResumeConversation();
}