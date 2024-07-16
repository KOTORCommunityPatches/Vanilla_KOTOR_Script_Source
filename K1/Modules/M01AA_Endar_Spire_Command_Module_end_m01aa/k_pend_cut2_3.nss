// Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_end"

void main() {
	
	object oSith4 = GetObjectByTag("end_cut2_sith4", 0);
	object oSith2 = GetObjectByTag("end_cut2_sith2", 0);
	object oSith3 = GetObjectByTag("end_cut2_sith3", 0);
	object oSith1 = GetObjectByTag("end_cut2_sith1", 0);
	object oSith5 = GetObjectByTag("end_cut2_sith2", 0);
	object oRepSold2 = GetObjectByTag("end_cut2_soldier2", 0);
	object oRepSold1 = GetObjectByTag("end_cut2_soldier1", 0);
	object oRWeapItem = GetItemInSlot(4, oSith4);
	object oGrenade = GetObjectByTag("end_invis_grenade", 0);
	talent talSpell = TalentSpell(87);
	location lGrenade = GetLocation(GetObjectByTag("end_grenade", 0));
	object oTrask = GetTrask();
	object oPC = GetFirstPC();
	
	UT_ActionPauseConversation(6.0);
	
	DelayCommand(2.0, AssignCommand(oSith3, ClearAllActions()));
	DelayCommand(2.1, AssignCommand(oSith3, CutsceneAttack(oRepSold2, 163, 4, 0)));
	DelayCommand(0.5, AssignCommand(oSith2, CutsceneAttack(oRepSold1, 239, 4, 0)));
	CancelCombat(oSith4);
	ChangeToStandardFaction(oSith4, STANDARD_FACTION_NEUTRAL);
	AssignCommand(oSith4, ActionUnequipItem(oRWeapItem, TRUE));
	DelayCommand(4.8, AssignCommand(oSith4, ActionEquipMostDamagingRanged(OBJECT_INVALID)));
	CancelCombat(oSith4);
	DelayCommand(0.1, AssignCommand(oSith4, ActionUseTalentOnObject(talSpell, oRepSold2)));
	DelayCommand(2.5, SetDialogPlaceableCamera(37));
	DelayCommand(2.75, SetMinOneHP(oRepSold2, FALSE));
	DelayCommand(2.75, SetMinOneHP(oRepSold1, FALSE));
	DelayCommand(2.75, SetMinOneHP(oSith3, FALSE));
	DelayCommand(2.8, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oRepSold2));
	DelayCommand(2.9, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oRepSold1));
	DelayCommand(2.95, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oSith3));
	DelayCommand(6.0, ChangeToStandardFaction(oSith4, STANDARD_FACTION_HOSTILE_1));
	DelayCommand(6.0, ChangeToStandardFaction(oSith1, STANDARD_FACTION_HOSTILE_1));
	DelayCommand(6.0, ChangeToStandardFaction(oSith5, STANDARD_FACTION_HOSTILE_1));
	DelayCommand(6.0, SetMinOneHP(oSith4, FALSE));
	DelayCommand(6.0, SetMinOneHP(oSith1, FALSE));
	DelayCommand(6.0, SetMinOneHP(oSith5, FALSE));
	DelayCommand(6.0, AssignCommand(oSith1, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE)));
	DelayCommand(6.0, AssignCommand(oSith4, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE)));
	DelayCommand(6.0, AssignCommand(oSith5, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE)));
	DelayCommand(6.1, AssignCommand(oSith4, GN_DetermineCombatRound(oPC)));
	DelayCommand(6.1, AssignCommand(oSith1, GN_DetermineCombatRound(oPC)));
	DelayCommand(6.1, AssignCommand(oSith5, GN_DetermineCombatRound(oTrask)));
}
