#include "k_inc_kas"

void main() {
	
	object oWP = GetWaypointByTag("kas22_janostalk");
	
	ClearAllActions();
	SetGlobalFadeIn(0.5, 0.5);
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	ActionMoveToObject(oWP, FALSE, 0.1);
}
