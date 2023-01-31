void main() {
	
	object oDroid3 = GetObjectByTag("kor37_bridge3", 0);
	effect eVFX = EffectVisualEffect(VFX_DUR_SHIELD_BLUE_MARK_I);
	
	ActionPauseConversation();
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_PERMANENT, eVFX, oDroid3));
	
	AssignCommand(oDroid3, ClearAllActions());
	AssignCommand(oDroid3, ActionPlayAnimation(ANIMATION_LOOPING_PAUSE3, 1.0, 6.0));
	
	ChangeToStandardFaction(oDroid3, STANDARD_FACTION_HOSTILE_1);
	
	ActionWait(2.0);
	ActionResumeConversation();
}