#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("Bastila", 0);
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oTarget = GetObjectByTag("malak_attack_target", 0);
	int int1;
	talent talSpell = TalentSpell(3);
	
	UT_ActionPauseConversation(2.0);
	
	DelayCommand(0.1, AssignCommand(oMalak, ClearAllActions()));
	DelayCommand(0.3, AssignCommand(oMalak, ActionCastFakeSpellAtLocation(FORCE_POWER_DRAIN_LIFE, GetLocation(oTarget))));
	DelayCommand(0.6, PlaySound("p_carth_hit2"));
	DelayCommand(0.65, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_PUSH), oCarth));
	DelayCommand(0.7, AssignCommand(oCarth, ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 0.7, 6.0)));
}