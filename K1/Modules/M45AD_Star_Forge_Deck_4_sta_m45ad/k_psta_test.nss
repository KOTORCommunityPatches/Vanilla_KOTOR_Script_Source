void main() {
	
	object oTarget = GetNearestObjectByTag("bp_jedi_target", OBJECT_SELF, 1);
	object oCaptive = GetNearestObjectByTag("sta_plc_captive", OBJECT_SELF, 1);
	object oUsed = GetLastUsedBy();
	
	AssignCommand(oUsed, ActionCastFakeSpellAtObject(FORCE_POWER_FORCE_STORM, oTarget));
	DelayCommand(0.90000004, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_DRAIN_LIFE, oUsed, BODY_NODE_HEAD), oTarget, 0.5));
	DelayCommand(1.3, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_DRAIN_LIFE, oTarget, BODY_NODE_CHEST), oCaptive, 1.2));
	DelayCommand(1.6, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DRAIN), oCaptive));
	DelayCommand(2.2, AssignCommand(oCaptive, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE)));
	DelayCommand(1.6, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DRAIN), oUsed));
}
