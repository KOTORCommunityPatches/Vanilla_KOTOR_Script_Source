#include "k_inc_utility"

void main() {
	
	object oWP_PC = GetObjectByTag("tar_pc0_jump_wp", 0);
	object oWP_PM1 = GetObjectByTag("tar_pc1_jump_wp", 0);
	object oWP_PM2 = GetObjectByTag("tar_pc2_jump_wp", 0);
	
	SetPartyLeader(NPC_PLAYER);
	
	DelayCommand(0.2, UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2));
}
