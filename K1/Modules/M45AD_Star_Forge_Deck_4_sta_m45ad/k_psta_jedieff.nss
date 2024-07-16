#include "k_inc_utility"

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oTarget1 = GetNearestObjectByTag("bp_malak_target", oMalak, 1);
	object oTarget2 = GetNearestObjectByTag("bp_jedi_target", OBJECT_SELF, 1);
	object oCaptive = GetNearestObjectByTag("sta_plc_captive", OBJECT_SELF, 1);
	
	UT_ActionPauseConversation(1.2);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_DRAIN_LIFE, oTarget2, BODY_NODE_CHEST), oCaptive, 1.2);
	DelayCommand(0.1, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DRAIN), oCaptive));
	AssignCommand(oCaptive, DelayCommand(1.1, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE)));
}
