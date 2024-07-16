#include "k_inc_utility"

void main() {
	
	location lStart = GetLocation(GetObjectByTag("wp_final_pc_walk", 0));
	object lEnd = GetObjectByTag("sta_end_walk_to", 0);
	object oPC = GetFirstPC();
	object oDoor = GetObjectByTag("k45_door_end", 0);
	
	UT_ActionPauseConversation(3.0);
	
	SetLockHeadFollowInDialog(oPC, 1);
	AssignCommand(oPC, JumpToLocation(lStart));
	
	DelayCommand(1.0, SetGlobalFadeIn(0.0, 0.5));
	
	DelayCommand(1.0, AssignCommand(oDoor, ActionOpenDoor(OBJECT_SELF)));
	DelayCommand(1.5, AssignCommand(oPC, ActionMoveToLocation(GetLocation(lEnd), 0)));
}
