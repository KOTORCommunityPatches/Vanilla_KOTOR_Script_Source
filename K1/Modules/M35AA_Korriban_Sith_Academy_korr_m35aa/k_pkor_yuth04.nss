// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA2", nValue);
}

void main() {
	
	SetYuthuraState(2);
}
