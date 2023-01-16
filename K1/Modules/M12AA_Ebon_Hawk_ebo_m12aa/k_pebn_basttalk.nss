#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_ebonhawk"

void main() {
	
	int nBast = GetGlobalNumber("K_SWG_BASTILA");		// Unused
	int nMap = GetGlobalNumber("K_STAR_MAP");			// Unused
	object oBastila = GetObjectByTag("Bastila", 0);		// Unused
	object oPC = GetEnteringObject();					// Unused
	int int5 = UT_GetTalkedToBooleanFlag(OBJECT_SELF);	// Unused
	
	Db_PostString("Bastila Talk Script Firing v4.0", 5, 5, 4.0);
	
	if (EBO_ShouldBastilaStartConversation())
		{
			HoldWorldFadeInForDialog();
			DelayCommand(2.0, EBO_BastilaStartConversation2());
		}
}
