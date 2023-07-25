// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetJoinSith() {
	return GetGlobalNumber("KOR_SITHJOIN");
}

int StartingConditional() {
	
	int nGlobal = GetJoinSith() == 2;
	
	return nGlobal;
}
