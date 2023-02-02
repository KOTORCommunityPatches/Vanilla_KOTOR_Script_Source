#include "k_inc_kas"

void main() {

	object oPCEnd = GetWaypointByTag("kas23_meetking2");
	object oPM1End = GetWaypointByTag("kas23_meetking3");
	object oPM2End = GetWaypointByTag("kas23_meetking4");

	SetFadeOffLocal(TRUE);

	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 3.0);
	SetPartyLeader(NPC_PLAYER);

	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);

	MusicBackgroundStop(GetArea(OBJECT_SELF));
	MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 20);
	MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 20);
	MusicBackgroundPlay(GetArea(OBJECT_SELF));
	
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPM1, ClearAllActions());
	AssignCommand(oPM2, ClearAllActions());
	
	DelayCommand(1.0, AssignCommand(oPC, ActionMoveToObject(oPCEnd, FALSE, 1.0)));
	DelayCommand(1.0, AssignCommand(oPM1, ActionMoveToObject(oPM1End, FALSE, 1.0)));
	DelayCommand(1.0, AssignCommand(oPM2, ActionMoveToObject(oPM2End, FALSE, 1.0)));
	DelayCommand(5.0, ActionResumeConversation());
}
