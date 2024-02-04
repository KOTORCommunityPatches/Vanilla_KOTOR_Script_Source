#include "k_inc_kas"

void main() {
	
	object oNPC = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
	
	while (GetIsObjectValid(oNPC) == TRUE)
		{
			if (GetTag(oNPC) == "kas22_janos_01" || GetTag(oNPC) == "kas22_czerkag_01" || GetTag(oNPC) == "kas22_czerkag_02" || GetTag(oNPC) == "kas22_czerkag_03"
			|| GetTag(oNPC) == "kas22_czerkag_04" || GetTag(oNPC) == "kas22_czerkas_01" || GetTag(oNPC) == "kas22_czerka2_01" || GetTag(oNPC) == "kas22_czerkam_01"
			|| GetTag(oNPC) == "kas22_xczerka_01" || GetTag(oNPC) == "kas22_xglobal_01")
				{
					ChangeToStandardFaction(oNPC, STANDARD_FACTION_HOSTILE_1);
				}
			
			oNPC = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
		}
	
	SetWookieRebelsLocal(TRUE);
}
