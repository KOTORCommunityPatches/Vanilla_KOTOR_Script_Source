#include "k_inc_utility"

void main() {
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	ActionPauseConversation();
	
	ActionMoveToObject(GetFirstPC(), TRUE, 1.0);
	
	DelayCommand(5.0, ActionResumeConversation());
}