#include "k_inc_tar"

void main() {
	
	TAR_MarkForCleanup(OBJECT_SELF);
	
	ActionPauseConversation();
	
	ActionMoveToObject(GetFirstPC(), TRUE);
	
	ActionResumeConversation();
}
