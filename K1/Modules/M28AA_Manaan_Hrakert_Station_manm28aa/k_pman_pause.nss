#include "k_inc_utility"

void main() {
	
	object oWP_PC = GetObjectByTag("man_pc_jump0", 0);
	object oWP_PM1 = GetObjectByTag("man_pc_jump1", 0);
	object oWP_PM2 = GetObjectByTag("man_pc_jump2", 0);
	
	UT_ActionPauseConversation(2.1);
	
	UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2);
}