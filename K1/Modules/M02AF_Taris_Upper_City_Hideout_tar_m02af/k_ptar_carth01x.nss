#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	SetGlobalNumber("K_CURRENT_PLANET", 10);
	SetGlobalNumber("tar_Carth", 1);
	
	Db_PostString("CARTH WAKEUP", 5, 5, 5.0);
	
	SetGlobalFadeOut(0.0, 1.0);
	
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}
