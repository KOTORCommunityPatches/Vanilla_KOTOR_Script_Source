#include "k_inc_debug"

void main() {
	
	object oCaptive = GetObjectByTag("sta_way_captive1", 0);
	
	ActionPauseConversation();
	
	ActionJumpToObject(oCaptive);
	ActionDoCommand(Db_PostString("First node", 10, 10, 5.0));
	
	ActionResumeConversation();
}
