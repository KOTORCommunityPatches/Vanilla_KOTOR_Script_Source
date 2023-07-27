#include "k_inc_tar"

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	location lFinish = GetLocation(GetObjectByTag("BP_PC_WP", 0));
	location lStart = GetLocation(GetObjectByTag("BP_ASSOC0_WP2", 0));
	
	ActionPauseConversation();
	
	UT_TeleportPartyMember(oPM0, lStart);
	
	DelayCommand(0.5, AssignCommand(oPM0, ActionMoveToLocation(lFinish, FALSE)));
	
	DelayCommand(4.0, ActionResumeConversation());
}
