void main() {
	
	object oDroid4 = GetObjectByTag("kor37_bridge4", 0);
	effect eVFX = EffectVisualEffect(VFX_DUR_SHIELD_RED_MARK_I);
	
	ActionPauseConversation();
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_PERMANENT, eVFX, oDroid4));
	
	AssignCommand(oDroid4, ClearAllActions());
	AssignCommand(oDroid4, ActionPlayAnimation(ANIMATION_LOOPING_PAUSE3, 1.0, 6.0));
	
	ChangeToStandardFaction(oDroid4, STANDARD_FACTION_HOSTILE_1);
	
	ActionWait(2.0);
	ActionResumeConversation();
}
