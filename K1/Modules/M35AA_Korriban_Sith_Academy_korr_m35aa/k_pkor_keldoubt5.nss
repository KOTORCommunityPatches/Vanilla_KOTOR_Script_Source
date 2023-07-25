// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetKelDoubt(int nValue) {
	SetGlobalNumber("KOR_KEL_DOUBT", nValue);
}

void main() {
	
	SetKelDoubt(3);
	
	object oSpeaker = GetPCSpeaker();
	
	AdjustAlignment(oSpeaker, ALIGNMENT_DARK_SIDE, 5);
	
	object oKel = GetObjectByTag("kor35_kelalgwinn", 0);
	
	DestroyObject(oKel);
}
