#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	ActionPauseConversation();
	
	Db_PostString("fade", 5, 5, 1.0);
	
	SetGlobalFadeIn(0.0, 1.0);
	
	UT_TeleportPartyMember(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("playerwp", 0)));
	UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("pm1wp", 0)));
	UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("pm2wp", 0)));
	
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 1)));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(1), ActionFollowLeader()));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(2), ActionFollowLeader()));
	
	ActionWait(4.0);
	ActionResumeConversation();
}