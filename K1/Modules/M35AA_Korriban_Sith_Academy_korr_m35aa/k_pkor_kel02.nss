// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetKelDoubt() {
	return GetGlobalNumber("KOR_KEL_DOUBT");
}

int StartingConditional() {
	
	int nGlobal = GetKelDoubt() == 1;
	
	return nGlobal;
}
