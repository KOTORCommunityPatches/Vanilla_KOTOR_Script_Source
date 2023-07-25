// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetSharState() {
	return GetGlobalNumber("KOR33_SHAARDAN");
}

int StartingConditional() {
	
	int nGlobal = GetSharState() == 1 || GetSharState() == 2;
	
	return nGlobal;
}
