// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetKnowExcav() {
	return GetGlobalNumber("KOR_KNOW_EXCAV");
}

int StartingConditional() {
	
	int nGlobal = GetKnowExcav() == 1;
	
	return nGlobal;
}
