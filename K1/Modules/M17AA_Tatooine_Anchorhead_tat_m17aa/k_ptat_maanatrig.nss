// GetStringByStrRef hotfix

#include "k_inc_tat"

void main() {
	
	object oMaanaWP = GetWaypointByTag("tat17_maana_wp");
	location lMaana = GetLocation(oMaanaWP);
	
	if (GetGlobalNumber("K_SWG_HELENA") == 2)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tat17aa_bastplot", lMaana, FALSE);
			DestroyObject(OBJECT_SELF);
		}
}