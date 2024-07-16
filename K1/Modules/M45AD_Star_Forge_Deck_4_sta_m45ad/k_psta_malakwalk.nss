#include "k_inc_debug"

void main() {
	
	ActionPauseConversation();
	
	object oCaptive = GetObjectByTag("sta_plc_captive", 0);
	
	ActionMoveToObject(oCaptive);
	ActionDoCommand(Db_PostString("Second node", 8, 8, 5.0));
	
	ActionResumeConversation();
}
