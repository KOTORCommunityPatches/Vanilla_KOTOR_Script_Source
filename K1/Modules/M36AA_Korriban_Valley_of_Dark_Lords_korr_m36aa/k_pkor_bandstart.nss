#include "k_inc_utility"

void main() {
	
	object oWP_PC = GetObjectByTag("kas_pcjump0_wp", 0);
	object oWP_PM1 = GetObjectByTag("kas_pcjump1_wp", 0);
	object oWP_PM2 = GetObjectByTag("kas_pcjump2_wp", 0);
	object oBandon = GetObjectByTag("kor_bandon", 0);
	object oThug1 = GetObjectByTag("kor_bandon_thug1", 0);
	object oThug2 = GetObjectByTag("kor_bandon_thug2", 0);
	object oTarget = GetObjectByTag("kor_calo_target", 0);
	object oDoor = GetObjectByTag("kor36_kor35", 0);
	
	SetLocked(oDoor, TRUE);
	
	UT_ActionPauseConversation(4.6);
	
	SetPartyLeader(NPC_PLAYER);
	
	DelayCommand(0.6, UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2));
}