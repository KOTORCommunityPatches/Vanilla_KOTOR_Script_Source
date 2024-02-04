#include "k_inc_kas"

void main() {
	
	object oWP = GetWaypointByTag("kas22_janostalk");
	
	if (GetDistanceToObject(oWP) > 1.0)
		{
			ClearAllActions();
			ActionJumpToObject(oWP, TRUE);
		}
}
