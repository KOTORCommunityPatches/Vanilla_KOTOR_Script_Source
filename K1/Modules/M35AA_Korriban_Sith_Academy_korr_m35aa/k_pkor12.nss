// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

int GetSithTalk() {
	return GetGlobalNumber("KOR_SITH_TALK");
}

int StartingConditional() {
	
	int nGlobal = GetSithTalk() == 2;
	
	return nGlobal;
}
