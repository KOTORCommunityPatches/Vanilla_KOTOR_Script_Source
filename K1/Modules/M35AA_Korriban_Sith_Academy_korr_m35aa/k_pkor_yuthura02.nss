// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetYuthuraState() {
	return GetGlobalNumber("KOR_YUTHURA2");
}

int StartingConditional() {
	
	int nGlobal = GetYuthuraState() < 2;
	
	return nGlobal;
}
