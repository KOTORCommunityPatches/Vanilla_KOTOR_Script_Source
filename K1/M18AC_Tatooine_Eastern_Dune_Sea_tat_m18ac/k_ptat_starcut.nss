#include "k_inc_utility"

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_Map1 = GetWaypointByTag("tat18_wp_map1");
	object oWP_Map2 = GetWaypointByTag("tat18_wp_map2");
	object oWP_Map3 = GetWaypointByTag("tat18_wp_map3");
	object oStarMap = GetObjectByTag("K_TAT_STAR_MAP", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oPC, JumpToObject(oWP_Map1, 1));
	AssignCommand(oPM1, JumpToObject(oWP_Map2, 1));
	AssignCommand(oPM2, JumpToObject(oWP_Map3, 1));
	
	DelayCommand(13.0, ActionResumeConversation());
	
	SetGlobalBoolean("tat_StarmapFound", TRUE);
	
	AssignCommand(oStarMap, PlaySound("pl_starmap_open"));
	
	AssignCommand(oStarMap, UT_StarMap4RunStarMap());
}
