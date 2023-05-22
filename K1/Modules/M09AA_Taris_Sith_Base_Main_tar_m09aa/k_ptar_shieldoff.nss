#include "k_inc_utility"

void main() {
	
	object oDroid = GetObjectByTag("tar09_shielddrd", 0);
	
	DelayCommand(0.5, SignalEvent(oDroid, EventUserDefined(2000)));
	SetGlobalBoolean("Tar_SithDroid", TRUE);
	
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}
