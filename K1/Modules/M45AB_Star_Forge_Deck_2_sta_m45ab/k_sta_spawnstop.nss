#include "k_inc_utility"

void main() {
	
	if (GetEnteringObject() == GetPartyMemberByIndex(0) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			SetGlobalBoolean("K_STA_SPAWNER", FALSE);
		}
}
