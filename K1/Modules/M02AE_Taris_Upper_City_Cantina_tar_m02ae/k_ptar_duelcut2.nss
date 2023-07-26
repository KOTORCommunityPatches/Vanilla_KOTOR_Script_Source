#include "k_inc_tar"

void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	
	ActionPauseConversation();
	ActionWait(8.0);
	ActionResumeConversation();
}
