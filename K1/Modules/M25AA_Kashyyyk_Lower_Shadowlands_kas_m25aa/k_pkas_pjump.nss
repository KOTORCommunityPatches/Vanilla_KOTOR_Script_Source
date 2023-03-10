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
	
	UT_ActionPauseConversation(4.0);
	
	SetPartyLeader(NPC_PLAYER);
	
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
	
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(lPM0)));
	DelayCommand(0.90000004, AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(lPM1)));
	DelayCommand(1.5, AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(lPM2)));
}
