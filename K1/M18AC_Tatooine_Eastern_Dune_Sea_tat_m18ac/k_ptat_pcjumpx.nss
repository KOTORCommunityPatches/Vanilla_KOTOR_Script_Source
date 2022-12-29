#include "k_inc_utility"

void main() {
	
	UT_ActionPauseConversation(1.7);
	
	object oThruster1 = GetObjectByTag("ambush_thrust", 0);
	object oThruster2 = GetObjectByTag("ambush_thrust2", 0);
	object oThruster3 = GetObjectByTag("ambush_thrust2", 1);
	object oWP_PC = GetObjectByTag("tat_party_jump0", 0);
	object oWP_PM1 = GetObjectByTag("tat_party_jump1", 0);
	object oWP_PM2 = GetObjectByTag("tat_party_jump2", 0);
	
	UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2);
	
	DelayCommand(0.1, PlaySound("mgs_turbdwn02"));
}
