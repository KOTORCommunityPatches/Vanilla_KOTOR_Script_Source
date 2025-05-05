#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, FALSE);
	
	DelayCommand(4.0, GN_WalkWayPoints());
}
