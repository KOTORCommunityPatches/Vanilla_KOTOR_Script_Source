#include "k_inc_tar"

void main() {
	
	object oCalo = GetObjectByTag("calo032", 0);
	object oRodianA = GetObjectByTag("rodian035", 0);
	object oRodianB = GetObjectByTag("rodian036", 0);
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	location lWP_PC = GetLocation(GetObjectByTag("ASSOC0_WP", 0));
	location lWP_PM1 = GetLocation(GetObjectByTag("ASSOC1_WP", 0));
	location lWP_PM2 = GetLocation(GetObjectByTag("ASSOC2_WP", 0));
	
	SetGlobalFadeIn(0.7, 2.5);
	
	UT_TeleportPartyMember(oPC, lWP_PC);
	
	if (GetIsObjectValid(oPM1))
		{
			UT_TeleportPartyMember(oPM1, lWP_PM1);
		}
	
	if (GetIsObjectValid(oPM2))
		{
			UT_TeleportPartyMember(oPM2, lWP_PM2);
		}
	
	ActionPauseConversation();
	
	SetLockHeadFollowInDialog(oPC, TRUE);
	SetLockHeadFollowInDialog(oPM1, TRUE);
	
	ActionWait(6.2);
	ActionResumeConversation();
	
	AssignCommand(oRodianA, ActionMoveToObject(GetObjectByTag("tar03_wpvic0", 0)));
	DelayCommand(0.5, AssignCommand(oRodianB, ActionMoveToObject(GetObjectByTag("tar03_wpvic1", 0))));
}
