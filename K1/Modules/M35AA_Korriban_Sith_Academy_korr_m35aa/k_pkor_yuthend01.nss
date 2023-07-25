// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

void main() {
	
	SetYuthuraState(3);
	
	object oSpeaker = GetPCSpeaker();
	
	AdjustAlignment(oSpeaker, ALIGNMENT_DARK_SIDE, 10);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oPass = GetItemPossessedBy(oSpeaker, "k35_itm_sithpass");
	
	if (GetIsObjectValid(oPass))
		{
			DestroyObject(oPass);
		}
}
