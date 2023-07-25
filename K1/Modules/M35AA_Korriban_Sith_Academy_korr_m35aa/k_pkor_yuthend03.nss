// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

void main() {
	
	SetYuthuraState(3);
	
	object oSpeaker = GetPCSpeaker();
	
	AdjustAlignment(oSpeaker, ALIGNMENT_LIGHT_SIDE, 10);
	
	object oPass = GetItemPossessedBy(oSpeaker, "k35_itm_sithpass");
	
	if (GetIsObjectValid(oPass))
		{
			DestroyObject(oPass);
		}
	
	object oEnt = GetObjectByTag("k35_way_entrance", 0);
	
	ActionMoveToObject(oEnt, 0, 1.0);
	DelayCommand(6.0, DestroyObject(OBJECT_SELF));
}
