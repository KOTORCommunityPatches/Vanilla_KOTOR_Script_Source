#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oDoor = GetObjectByTag("k45_door_end", 0);
	
	SetLocked(oDoor, FALSE);
	
	UT_ActionPauseConversation(8.0);
	
	DelayCommand(3.0, SetDialogPlaceableCamera(112));
	
	SetGlobalFadeOut(6.0, 2.0);
}
