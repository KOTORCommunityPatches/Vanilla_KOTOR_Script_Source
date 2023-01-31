void main() {
	
	object oDroid2 = GetObjectByTag("kor37_bridge2", 0);
	effect eVFX = EffectVisualEffect(VFX_DUR_SHIELD_RED_MARK_I);
	
	ActionPauseConversation();
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_PERMANENT, eVFX, oDroid2));
	
	AssignCommand(oDroid2, ClearAllActions());
	AssignCommand(oDroid2, ActionPlayAnimation(ANIMATION_LOOPING_PAUSE3, 1.0, 6.0));
	
	ChangeToStandardFaction(oDroid2, STANDARD_FACTION_HOSTILE_1);
	
	ActionWait(2.0);
	ActionResumeConversation();
}