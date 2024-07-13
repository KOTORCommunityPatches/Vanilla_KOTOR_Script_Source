void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oCaptive = GetNearestObjectByTag("sta_plc_captive2", OBJECT_SELF, 1);
	
	ActionPauseConversation();
	
	effect efBeam = EffectBeam(VFX_BEAM_DRAIN_LIFE, oMalak, BODY_NODE_HAND);
	
	AssignCommand(oMalak, ActionCastFakeSpellAtObject(FORCE_POWER_DRAIN_LIFE, oCaptive));
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efBeam, oCaptive, 2.0));
	
	int nMaxHP = GetMaxHitPoints(oMalak);
	int nCurHP = GetCurrentHitPoints(oMalak);
	effect efHeal = EffectHeal(nMaxHP - nCurHP);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, efHeal, oMalak);
	
	int nMaxFP = GetMaxForcePoints(oMalak);
	int nCurFP = GetCurrentForcePoints(oMalak);
	effect efForce = EffectHealForcePoints((nMaxFP - nCurFP));
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, efForce, oMalak);
	DelayCommand(2.0, AssignCommand(oCaptive, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE)));
	
	ActionWait(3.0);
	ActionResumeConversation();
}
