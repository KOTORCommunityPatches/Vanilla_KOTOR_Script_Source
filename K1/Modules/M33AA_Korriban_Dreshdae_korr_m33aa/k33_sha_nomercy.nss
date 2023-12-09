// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"
#include "k_inc_generic"

void SetShaarGlobal(int nState) {
	SetGlobalNumber("KOR33_SHAARDAN", nState);
}

void main() {
	
	SetShaarGlobal(1);
}
