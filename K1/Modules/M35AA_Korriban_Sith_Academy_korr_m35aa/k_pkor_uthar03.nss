// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetSithHostile(int nValue) {
	SetGlobalNumber("KOR_SITH_HOSTILE", nValue);
}

void SetTestState(int nValue) {
	SetGlobalNumber("KOR_SITHTEST", nValue);
}

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

void main() {
	
	SetYuthuraState(3);
	SetTestState(10);
	SetSithHostile(1);
	
	AdjustAlignment(GetPCSpeaker(), ALIGNMENT_DARK_SIDE, 10);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oPC = GetFirstPC();
	
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "k35_itm_sithpass")))
		{
			DestroyObject(GetItemPossessedBy(oPC, "k35_itm_sithpass"));
		}
}
