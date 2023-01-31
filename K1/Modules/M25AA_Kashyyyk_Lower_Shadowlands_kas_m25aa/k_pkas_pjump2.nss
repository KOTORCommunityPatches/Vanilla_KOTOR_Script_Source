#include "k_inc_utility"

void main() {
	
	object oWP_PM0 = GetNearestObjectByTag("BP_JUMP0_WP", OBJECT_SELF, 1);
	object oWP_PM1 = GetNearestObjectByTag("BP_JUMP1_WP", OBJECT_SELF, 1);
	object oWP_PM2 = GetNearestObjectByTag("BP_JUMP2_WP", OBJECT_SELF, 1);
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	location lPM0 = GetLocation(GetNearestObjectByTag("BP_MOVE0_WP", OBJECT_SELF, 1));
	location lPM1 = GetLocation(GetNearestObjectByTag("BP_MOVE1_WP", OBJECT_SELF, 1));
	location lPM2 = GetLocation(GetNearestObjectByTag("BP_MOVE2_WP", OBJECT_SELF, 1));
	
	UT_ActionPauseConversation(2.0);
	
	AssignCommand(oPM0, ClearAllActions());
	
	if (GetIsObjectValid(oPM1))
		{
			AssignCommand(oPM1, ClearAllActions());
		}
	
	if (GetIsObjectValid(oPM2))
		{
			AssignCommand(oPM2, ClearAllActions());
		}
	
	UT_TeleportWholeParty(oWP_PM0, oWP_PM1, oWP_PM2);
}