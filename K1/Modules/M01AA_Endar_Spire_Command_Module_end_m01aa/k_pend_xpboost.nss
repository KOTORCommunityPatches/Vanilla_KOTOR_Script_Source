#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetXP(oPC) < 1000 && GetHitDice(oPC) <= 1)
		{
			SetXP(oPC, 1000);
		}
	
	UT_TeleportWholeParty(GetObjectByTag("wp_end_room8_1", 0), GetObjectByTag("wp_end_room8_1", 0), OBJECT_INVALID);
}