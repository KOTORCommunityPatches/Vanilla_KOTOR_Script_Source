#include "k_inc_end"

void main() {
	
	SetLockOrientationInDialog(GetTrask(), TRUE);
	
	object oDoor = GetObjectByTag("end_door07", 0);
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
