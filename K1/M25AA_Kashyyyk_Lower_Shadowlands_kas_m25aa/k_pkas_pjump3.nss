#include "k_inc_utility"

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_PM0 = GetNearestObjectByTag("BP_JUMP0_WPx", oPM0, 1);
	object oWP_PM1 = GetNearestObjectByTag("BP_JUMP1_WPx", oPM0, 1);
	object oWP_PM2 = GetNearestObjectByTag("BP_JUMP2_WPx", oPM0, 1);
	
	UT_TeleportWholeParty(oWP_PM0, oWP_PM1, oWP_PM2);
}
