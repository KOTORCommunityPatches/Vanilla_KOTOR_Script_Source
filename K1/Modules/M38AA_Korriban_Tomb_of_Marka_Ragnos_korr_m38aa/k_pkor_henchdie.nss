// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_utility"

void main() {
	
	ActionPauseConversation();
	
	object oWarDroid2 = GetObjectByTag("kor38a_wardroid2", 0);
	object oWarDroid3 = GetObjectByTag("kor38a_wardroid3", 0);
	event eUser = EventUserDefined(138);
	
	SignalEvent(oWarDroid2, eUser);
	SignalEvent(oWarDroid3, eUser);
	
	object oWPM0 = GetObjectByTag("k38a_way_pc0out", 0);
	object oWPM1 = GetObjectByTag("k38a_way_pc1out", 0);
	object oWPM2 = GetObjectByTag("k38a_way_pc2out", 0);
	
	UT_TeleportWholeParty(oWPM0, oWPM1, oWPM2);
	
	ActionWait(1.0);
	ActionResumeConversation();
}
