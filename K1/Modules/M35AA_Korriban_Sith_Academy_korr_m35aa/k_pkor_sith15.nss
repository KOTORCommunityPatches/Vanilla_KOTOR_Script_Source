// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetSithTalk(int nValue) {
	SetGlobalNumber("KOR_SITH_TALK", nValue);
}

void main() {
	
	SetSithTalk(Random(3));
}
