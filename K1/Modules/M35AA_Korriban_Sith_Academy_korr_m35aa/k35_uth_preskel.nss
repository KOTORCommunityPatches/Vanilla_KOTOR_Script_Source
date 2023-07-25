// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetKelDoubt(int nValue) {
	SetGlobalNumber("KOR_KEL_DOUBT", nValue);
}

void main() {
	
	int nGlobal = GetGlobalNumber("KOR_SITH_PRESTIGE");
	
	SetGlobalNumber("KOR_SITH_PRESTIGE", nGlobal + 1);
	
	SetKelDoubt(3);
}
