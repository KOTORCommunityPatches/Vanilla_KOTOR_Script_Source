// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetTestState(int nValue) {
	SetGlobalNumber("KOR_SITHTEST", nValue);
}

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

void main() {
	
	SetYuthuraState(1);
	SetTestState(10);
	
	object oPC = GetFirstPC();
	object oEnt = GetObjectByTag("k35_way_entrance", 0);
	
	AssignCommand(oPC, ActionJumpToObject(oEnt, TRUE));
	
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "k35_itm_sithpass")))
		{
			DestroyObject(GetItemPossessedBy(oPC, "k35_itm_sithpass"));
		}
}
