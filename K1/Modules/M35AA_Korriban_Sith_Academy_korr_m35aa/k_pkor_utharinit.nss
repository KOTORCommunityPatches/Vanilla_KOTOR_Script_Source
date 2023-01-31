#include "k_inc_utility"

void sub1(int intParam1) {
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
}

void main() {
	
	sub1(1);
	
	SetLockOrientationInDialog(OBJECT_SELF, TRUE);
	SetLockHeadFollowInDialog(OBJECT_SELF, TRUE);
}