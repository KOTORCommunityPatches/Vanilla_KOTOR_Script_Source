#include "k_inc_utility"

void main() {
	
	object oWP = GetWaypointByTag("tat17_customwalk");
	
	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
		}
	
	ActionMoveToObject(oWP);
}
