#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("Bastila", 0);
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oPC_temp = GetObjectByTag("pc_temp", 0);
	object oMalak_temp = GetObjectByTag("malak_temp", 0);
	object oWP_PC = GetObjectByTag("lev_pc_final_fight", 0);
	object oWP_Malak = GetObjectByTag("lev_malak_final_fight", 0);
	
	UT_ActionPauseConversation(3.0);
	
	SetCommandable(TRUE, oMalak);
	
	SetLightsaberPowered(GetObjectByTag("Bastila", 0), TRUE, TRUE, FALSE);
	
	AssignCommand(oMalak, ActionJumpToLocation(GetLocation(oWP_Malak)));
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(oWP_PC)));
	
	DelayCommand(0.5, AssignCommand(oMalak, JumpToLocation(GetLocation(oWP_Malak))));
	DelayCommand(0.5, AssignCommand(GetPartyMemberByIndex(0), JumpToLocation(GetLocation(oWP_PC))));
	
	DelayCommand(0.8, AssignCommand(oMalak, ClearAllActions()));
	DelayCommand(1.0, PlaySound("v_imp_frcpush"));
	DelayCommand(1.0, AssignCommand(oMalak, ActionCastFakeSpellAtObject(FORCE_POWER_DRAIN_LIFE, oPC)));
	
	DelayCommand(1.5, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectCutSceneParalyze(), oPC));
	DelayCommand(1.5, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_HOLD), oPC));
	
	object object19;
}
