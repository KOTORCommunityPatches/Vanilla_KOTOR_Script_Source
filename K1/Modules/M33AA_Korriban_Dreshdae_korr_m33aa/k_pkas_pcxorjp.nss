#include "k_inc_utility"

void main() {
	
	object oWP_PM0 = GetObjectByTag("kas_xor_pc0_jump", 0);
	object oWP_PM1 = GetObjectByTag("kas_xor_pc1_jump", 0);
	object oWP_PM2 = GetObjectByTag("kas_xor_pc2_jump", 0);
	
	SetDialogPlaceableCamera(445);
	
	UT_ActionPauseConversation(6.5);
	
	UT_TeleportWholeParty(oWP_PM0, oWP_PM1, oWP_PM2);
	
	DelayCommand(5.0, SetDialogPlaceableCamera(444));
}
