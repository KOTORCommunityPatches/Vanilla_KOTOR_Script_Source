#include "k_inc_utility"

void main() {
	
	SetPartyLeader(NPC_PLAYER);
	
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oDroid = GetObjectByTag("vornsdroid", 0);
	object oPC_WPStart = GetObjectByTag("tat_pc_run_start", 0);
	object oPM1_WPStart = GetObjectByTag("tat_assoc1_run_start", 0);
	object oPM2_WPStart = GetObjectByTag("tat_assoc2_run_start", 0);
	location lSpDroid = GetLocation(GetObjectByTag("tat_droid_run_start", 0));
	location lPC_WPRun = GetLocation(GetObjectByTag("tat_pc_run", 0));
	location lPM1_WPRun = GetLocation(GetObjectByTag("tat_assoc1_run", 0));
	location lPM2_WPRun = GetLocation(GetObjectByTag("tat_assoc2_run", 0));
	location lDroid_WPRun = GetLocation(GetObjectByTag("tat_droid_run", 0));
	location lSpVorn = GetLocation(GetObjectByTag("tat_vorn_spawn", 0));
	location lSpKrayt = GetLocation(GetObjectByTag("tat_krayt_spawn", 0));
	location lSpFire = GetLocation(GetObjectByTag("tat_cut_fire_wp", 0));
	location lSpRubble = GetLocation(GetObjectByTag("tat_rubble_wp", 0));
	
	UT_ActionPauseConversation(5.5);
	
	UT_TeleportWholeParty(oPC_WPStart, oPM1_WPStart, oPM2_WPStart);
	
	CreateObject(OBJECT_TYPE_CREATURE, "vorn", lSpVorn);
	CreateObject(OBJECT_TYPE_CREATURE, "tat_dead_krayt", lSpKrayt);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_cut_fire", lSpFire);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_rubble", lSpRubble);
	
	DelayCommand(6.0, DestroyObject(oDroid));
	
	DelayCommand(0.0, UT_CreateObject(OBJECT_TYPE_CREATURE, "vornsdroid2", lSpDroid));
	
	DelayCommand(0.5, AssignCommand(GetObjectByTag("vornsdroid2", 0), ActionMoveToLocation(lDroid_WPRun, TRUE)));
	DelayCommand(0.8, AssignCommand(oPC, ActionMoveToLocation(lPC_WPRun, TRUE)));
	DelayCommand(1.0, AssignCommand(oPM1, ActionMoveToLocation(lPM1_WPRun, TRUE)));
	DelayCommand(1.2, AssignCommand(oPM2, ActionMoveToLocation(lPM2_WPRun, TRUE)));
}