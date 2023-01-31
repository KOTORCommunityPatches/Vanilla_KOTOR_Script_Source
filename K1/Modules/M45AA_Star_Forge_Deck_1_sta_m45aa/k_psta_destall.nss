#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oMalak = GetObjectByTag("sta45a_malak", 0);
	object oSithMaster = GetObjectByTag("SithMaster", 0);
	object oSta45a_assault = GetObjectByTag("sta45a_assault", 0);
	object oSta45_droid_cut1 = GetObjectByTag("sta45_droid_cut1", 0);
	object oSta45_droid_cut2 = GetObjectByTag("sta45_droid_cut2", 0);
	object oSta45_droid_cut3 = GetObjectByTag("sta45_droid_cut3", 0);
	object oSta45_droid_cut4 = GetObjectByTag("sta45_droid_cut4", 0);
	location location1 = GetLocation(GetObjectByTag("STA_DROID1_JUMP_WP", 0));
	location location3 = GetLocation(GetObjectByTag("STA_DROID2_JUMP_WP", 0));
	location location5 = GetLocation(GetObjectByTag("STA_DROID3_JUMP_WP", 0));
	location location7 = GetLocation(GetObjectByTag("STA_DROID4_JUMP_WP", 0));
	
	SetGlobalFadeOut(0.5, 1.0);
	
	DestroyObject(oMalak, 0.0, 0, 0.0);
	DestroyObject(oSithMaster, 0.0, 0, 0.0);
	DestroyObject(oSta45a_assault, 0.0, 0, 0.0);
	
	SetGlobalFadeIn(1.0, 1.0);
	
	AssignCommand(oSta45_droid_cut1, JumpToLocation(location1));
	AssignCommand(oSta45_droid_cut2, JumpToLocation(location3));
	AssignCommand(oSta45_droid_cut3, JumpToLocation(location5));
	AssignCommand(oSta45_droid_cut4, JumpToLocation(location7));
	
	UT_RunCombatEncounter("a_sta_darkjed001", "STA_SPAWN1_WP", 1, 1.5, 1);
	UT_RunCombatEncounter("b_sta_darkjed002", "STA_SPAWN2_WP", 1, 1.5, 1);
	UT_RunCombatEncounter("a_sta_darkjed001", "STA_SPAWN4_WP", 1, 1.5, 1);
	UT_RunCombatEncounter("c_sta_darkjed003", "STA_SPAWN5_WP", 1, 1.5, 1);
	
	ChangeToStandardFaction(oSta45_droid_cut1, 1);
	ChangeToStandardFaction(oSta45_droid_cut2, 1);
	ChangeToStandardFaction(oSta45_droid_cut3, 1);
	ChangeToStandardFaction(oSta45_droid_cut4, 1);
	
	AssignCommand(oSta45_droid_cut1, ActionAttack(oPC, 0));
	AssignCommand(oSta45_droid_cut2, ActionAttack(oPC, 0));
	AssignCommand(oSta45_droid_cut3, ActionAttack(oPC, 0));
	AssignCommand(oSta45_droid_cut4, ActionAttack(oPC, 0));
}