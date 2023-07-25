// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetTalked() {
	return UT_GetTalkedToBooleanFlag(OBJECT_SELF);
}

int StartingConditional() {
	
	int nLocal = GetTalked() == FALSE;
	
	return nLocal;
}
