#include "k_inc_debug"

void main() {
	
	ActionPauseConversation();
	
	Db_PostString("phase 2", 5, 5, 1.0);
	
	ActionWait(2.0);
	ActionResumeConversation();
}
