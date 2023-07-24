#include "k_inc_utility"

void main() {
	
	object oRepSol = GetObjectByTag("REPUBLICSO", 0);
	
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(oRepSol));
	
	ActionPauseConversation();
	ActionWait(2.5);
	
	AssignCommand(oRepSol, ActionPlayAnimation(ANIMATION_FIREFORGET_INJECT));
	
	ActionWait(1.5);
	ActionResumeConversation();
}
