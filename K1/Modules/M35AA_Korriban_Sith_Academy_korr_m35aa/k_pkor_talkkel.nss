// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetTalked(int nValue) {
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, nValue);
}

void main() {
	
	SetTalked(TRUE);
}
