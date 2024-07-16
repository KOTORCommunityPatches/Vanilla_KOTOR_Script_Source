#include "k_inc_utility"

void main() {
	
	location lStart = GetLocation(GetObjectByTag("wp_final_pc_walk", 0));
	object oAbort = GetObjectByTag("wp_transabort", 0);
	object oPC = GetFirstPC();
	object oDoor = GetObjectByTag("k45_door_end", 0);
	
	UT_ActionPauseConversation(3.0);
	
	DelayCommand(2.5, SetGlobalFadeOut(0.0, 0.5));
}
