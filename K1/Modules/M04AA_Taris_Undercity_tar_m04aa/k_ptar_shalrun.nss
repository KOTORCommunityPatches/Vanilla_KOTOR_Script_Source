#include "k_inc_utility"

void main() {
	
	object oShaleena = GetObjectByTag("outcastshaleena", 0);
	
	UT_SetTalkedToBooleanFlag(oShaleena, TRUE);
	
	ActionPauseConversation();
	
	AssignCommand(oShaleena, ActionMoveToObject(GetFirstPC(), TRUE));
	
	ActionWait(3.0);
	ActionResumeConversation();
}
