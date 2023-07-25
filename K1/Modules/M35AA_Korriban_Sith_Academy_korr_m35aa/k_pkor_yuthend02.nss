// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetYuthuraState(int intParam1) {
	SetGlobalNumber("KOR_YUTHURA1", intParam1);
}

void main() {
	
	SetYuthuraState(3);
	
	object oPC = GetFirstPC();
	object oPass = GetItemPossessedBy(oPC, "k35_itm_sithpass");
	
	if (GetIsObjectValid(oPass))
		{
			DestroyObject(oPass);
		}
	
	object oWP = GetObjectByTag("k35_way_yuthura", 0);
	
	ActionMoveToObject(oWP);
	DelayCommand(6.0, DestroyObject(OBJECT_SELF));
}
