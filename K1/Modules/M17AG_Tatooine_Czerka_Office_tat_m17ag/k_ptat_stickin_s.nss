#include "k_inc_tat"

void main() {
	
	object oPC = GetPCSpeaker();
	object oGaffi = GetItemPossessedBy(oPC, "tat20_gaffichief");
	
	ActionTakeItem(oGaffi, oPC);
	
	SetChieftainStickGivenLocal(TRUE);
}