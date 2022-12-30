#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("Bastila", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	
	UT_ActionPauseConversation(4.0);
	
	RemovePartyMember(NPC_CARTH);
	RemovePartyMember(NPC_BASTILA);
	
	ChangeToStandardFaction(oCarth, STANDARD_FACTION_NEUTRAL);
	ChangeToStandardFaction(oBastila, STANDARD_FACTION_NEUTRAL);
	
	PlaySound("v_imp_stun");
	
	AssignCommand(oMalak, ActionCastFakeSpellAtObject(FORCE_POWER_DEATH_FIELD, oPC));
	DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectCutSceneParalyze(), oBastila));
	DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_HOLD), oBastila));
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectCutSceneParalyze(), oCarth));
	DelayCommand(0.6, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_HOLD), oCarth));
	
	DelayCommand(1.0, SetDialogPlaceableCamera(15));
	DelayCommand(2.5, SetDialogPlaceableCamera(16));
}
