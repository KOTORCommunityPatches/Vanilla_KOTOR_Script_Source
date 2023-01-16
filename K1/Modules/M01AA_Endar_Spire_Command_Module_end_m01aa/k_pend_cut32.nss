#include "k_inc_end"

void main() {
	
	UT_TeleportWholeParty(GetObjectByTag("wp_pc_final", 0), GetObjectByTag("wp_trask_final", 0), OBJECT_INVALID);
	
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetTrask(), EventUserDefined(400)));
}
