#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oTrigger01 = GetNearestObjectByTag("kas22_capttrig", OBJECT_SELF, 1);
	object oTrigger02 = GetNearestObjectByTag("kas22_capttrig", OBJECT_SELF, 2);
	object oWP05 = GetObjectByTag("kas22_captwook5", 0);
	object oWP06 = GetObjectByTag("kas22_captwook6", 0);
	object oWP07 = GetObjectByTag("kas22_captwook7", 0);
	object oWP08 = GetObjectByTag("kas22_captwook8", 0);
	object oWP_PM0 = GetNearestObjectByTag("kas22_partymove", OBJECT_SELF, 1);
	object oWP_PM1 = GetNearestObjectByTag("kas22_partymove", OBJECT_SELF, 2);
	object oWP_PM2 = GetNearestObjectByTag("kas22_partymove", OBJECT_SELF, 3);
	
	AssignCommand(oPM0, ActionJumpToObject(oWP_PM0));
	AssignCommand(oPM1, ActionJumpToObject(oWP_PM1));
	AssignCommand(oPM2, ActionJumpToObject(oWP_PM2));
	
	object oWookiee01 = GetObjectByTag("kas22_wookcap_02", 0);
	object oWookiee02 = GetObjectByTag("kas22_wookcap_03", 0);
	object oGuard01 = GetObjectByTag("kas22_capczer_01", 0);
	object oGuard02 = GetObjectByTag("kas22_capczer_02", 0);
	
	AssignCommand(oWookiee01, ActionMoveToObject(oWP05));
	AssignCommand(oWookiee02, ActionMoveToObject(oWP06));
	AssignCommand(oGuard01, ActionMoveToObject(oWP07));
	AssignCommand(oGuard02, ActionMoveToObject(oWP08));
	
	SetGlobalFadeIn(0.0, 3.0);
	
	DestroyObject(oTrigger01);
	DestroyObject(oTrigger02);
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}
