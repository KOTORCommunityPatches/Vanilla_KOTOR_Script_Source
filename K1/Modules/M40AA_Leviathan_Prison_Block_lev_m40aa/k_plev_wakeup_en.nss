#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) || GetTag(oEntering) != "SaulKarath401")
		{
			return;
		}
	
	Db_PostString("WAKE UP", 5, 5, 5.0);
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	SignalEvent(oEntering, EventUserDefined(2000));
}