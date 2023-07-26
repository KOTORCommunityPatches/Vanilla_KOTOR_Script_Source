#include "k_inc_tar"

void main() {
	
	AssignCommand(GetObjectByTag("zaalbar031", 0), ActionMoveToObject(GetObjectByTag("mission031", 0), 0, 2.0));
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
