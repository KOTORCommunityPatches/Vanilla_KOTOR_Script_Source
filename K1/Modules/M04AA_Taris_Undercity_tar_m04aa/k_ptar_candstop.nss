#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetTag(oEntering) == "Canderous043" && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			SignalEvent(oEntering, EventUserDefined(4000));
			SignalEvent(GetObjectByTag("daviktroop041", 0), EventUserDefined(4000));
			SignalEvent(GetObjectByTag("daviktroop042", 0), EventUserDefined(4000));
			SignalEvent(GetObjectByTag("daviktroop043", 0), EventUserDefined(4000));
		}
}
