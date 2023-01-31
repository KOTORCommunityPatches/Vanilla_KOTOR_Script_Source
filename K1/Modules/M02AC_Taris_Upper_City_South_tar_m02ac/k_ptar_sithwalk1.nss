#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	DelayCommand(4.0, GN_WalkWayPoints());
}