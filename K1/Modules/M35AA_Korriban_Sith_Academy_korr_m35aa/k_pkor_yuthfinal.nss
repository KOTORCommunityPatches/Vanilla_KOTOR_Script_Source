// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetTestState() {
	return GetGlobalNumber("KOR_SITHTEST");
}

int StartingConditional() {
	
	int nGlobal = GetTestState() == 10;
	
	return nGlobal;
}
