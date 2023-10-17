#include "k_inc_kas"

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_PM0 = GetWaypointByTag("kas23_audmove1");
	object oWP_PM1 = GetWaypointByTag("kas23_audmove2");
	object oWP_PM2 = GetWaypointByTag("kas23_audmove3");
	object oDoor = GetObjectByTag("kas23ad_door", 0);
	
	ActionPauseConversation();
	
	SetGlobalFadeIn(1.0, 3.0);
	
	DelayCommand(4.0, ActionResumeConversation());
	
	AssignCommand(oPM0, DelayCommand(2.5, ActionMoveToObject(oWP_PM0)));
	AssignCommand(oPM1, DelayCommand(2.6, ActionMoveToObject(oWP_PM1)));
	AssignCommand(oPM2, DelayCommand(2.6, ActionMoveToObject(oWP_PM2)));
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	AssignCommand(oDoor, DelayCommand(2.5, ActionCloseDoor(oDoor)));
}
