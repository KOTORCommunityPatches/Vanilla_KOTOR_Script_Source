// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

string sSithSword = "k35_itm_sithrwrd";

void SetJoinSith(int nValue) {
	SetGlobalNumber("KOR_SITHJOIN", nValue);
}

void main() {
	
	SetJoinSith(2);
	
	object oSpeaker = GetPCSpeaker();
	
	GiveXPToCreature(oSpeaker, 500);
	CreateItemOnObject(sSithSword, oSpeaker, 1);
	
	object oWP = GetObjectByTag("k35_way_uthar", 0);
	
	DelayCommand(3.0, ActionMoveToObject(oWP));
}
