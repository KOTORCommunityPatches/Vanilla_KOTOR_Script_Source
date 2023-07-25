// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetKelDoubt(int nValue) {
	SetGlobalNumber("KOR_KEL_DOUBT", nValue);
}

void main() {
	
	SetKelDoubt(2);
	
	object oSpeaker = GetPCSpeaker();
	
	GiveXPToCreature(oSpeaker, 50);
	
	object oEnt = GetObjectByTag("k35_way_entrance", 0);
	
	ActionMoveToObject(oEnt, TRUE);
	ActionDoCommand(DestroyObject(OBJECT_SELF));
}
