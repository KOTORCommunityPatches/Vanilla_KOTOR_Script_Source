#include "k_inc_end"

void main() {
	
	SetPartyLeader(NPC_PLAYER);
	
	// Turns AI back on
	ExecuteScript("k_pman_npcstart", GetTrask(), -1);
}