#include "k_inc_utility"

void main() {
	
	object oWP_PC = GetObjectByTag("tat_party0_jump", 0);
	object oWP_PM1 = GetObjectByTag("tat_party1_jump", 0);
	object oWP_PM2 = GetObjectByTag("tat_party2_jump", 0);
	
	UT_ActionPauseConversation(10.0);
	
	UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2);
	
	DelayCommand(4.0, SetDialogPlaceableCamera(23));
	DelayCommand(7.0, SetDialogPlaceableCamera(24));
}
