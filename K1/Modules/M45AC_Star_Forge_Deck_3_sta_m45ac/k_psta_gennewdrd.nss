// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_utility"

void main() {
	
	int nGlobal = GetGlobalNumber("STA_GENERATORS");
	
	nGlobal = nGlobal + 1;
	SetGlobalNumber("STA_GENERATORS", nGlobal);
	
	event eUser = EventUserDefined(345);
	
	UT_ActionPauseConversation(5.0);
	
	SignalEvent(OBJECT_SELF, eUser);
	
	if (nGlobal >= 6)
		{
			object oDoor = GetObjectByTag("k45_door_malak", 0);
			
			SetLocked(oDoor, FALSE);
			
			DelayCommand(3.0, SetDialogPlaceableCamera(6));
			
			DelayCommand(3.2, AssignCommand(oDoor, ActionOpenDoor(OBJECT_SELF)));
		}
}
