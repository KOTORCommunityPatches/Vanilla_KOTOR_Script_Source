#include "k_inc_utility"

void main() {
	
	object oWP_PC_Move = GetObjectByTag("tat_party_move0", 0);
	object oWP_PM1_Move = GetObjectByTag("tat_party_move1", 0);
	object oWP_PM2_Move = GetObjectByTag("tat_party_move2", 0);
	
	UT_ActionPauseConversation(2.0);
	
	SetPartyLeader(NPC_PLAYER);
	
	object oWP_PC = GetObjectByTag("tat_party_jump0", 0);
	object oWP_PM1 = GetObjectByTag("tat_party_jump1", 0);
	object oWP_PM2 = GetObjectByTag("tat_party_jump2", 0);
	
	UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2);
}
