#include "k_inc_debug"

void main() {
	
	ActionPauseConversation();
	
	object oCaptive = GetObjectByTag("sta_plc_captive", 0);
	
	SetPlotFlag(oCaptive, FALSE);
	
	effect efBeam = EffectBeam(VFX_BEAM_DRAIN_LIFE, OBJECT_SELF, BODY_NODE_HAND);
	
	ActionCastFakeSpellAtObject(FORCE_POWER_DRAIN_LIFE, oCaptive);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efBeam, oCaptive, 1.0);
	
	int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
	int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
	effect efHeal = EffectHeal(nMaxHP - nCurHP);
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, efHeal, OBJECT_SELF));
	
	int nMaxFP = GetMaxForcePoints(OBJECT_SELF);
	int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
	effect efForce = EffectHealForcePoints(nMaxFP - nCurFP);
	
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, efForce, OBJECT_SELF));
	DelayCommand(2.0, AssignCommand(oCaptive, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE)));
	
	SetGlobalNumber("STA_MALAK_JEDI", 1);
	
	ActionWait(4.0);
	
	ActionDoCommand(Db_PostString("Third node", 6, 6, 5.0));
	
	ActionResumeConversation();
}
