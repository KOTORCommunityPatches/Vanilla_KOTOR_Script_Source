#include "k_inc_generic"

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oFaction = GetObjectByTag("tat18_tuskanfac", 0);
	int nCheck0 = FALSE;
	int nCheck1 = FALSE;
	int nCheck2 = FALSE;
	
	if (GetTag(oPC) == "HK47" || GetTag(oPC) == "T3M4" || GetTag(GetItemInSlot(INVENTORY_SLOT_BODY, oPC)) == "tat17_sandperdis")
		{
			nCheck0 = TRUE;
		}
	
	if (GetTag(oPM1) == "HK47" || GetTag(oPM1) == "T3M4" || GetTag(GetItemInSlot(INVENTORY_SLOT_BODY, oPM1)) == "tat17_sandperdis" || GetIsObjectValid(oPM1) == FALSE)
		{
			nCheck1 = TRUE;
		}
	
	if (GetTag(oPM2) == "HK47" || GetTag(oPM2) == "T3M4" || GetTag(GetItemInSlot(INVENTORY_SLOT_BODY, oPM2)) == "tat17_sandperdis" || GetIsObjectValid(oPM2) == FALSE)
		{
			nCheck2 = TRUE;
		}
	
	if (GetGlobalBoolean("tat_TuskenSuit") == FALSE && GetGlobalBoolean("tat_TuskenMad") == FALSE)
		{
			if (nCheck0 == TRUE && nCheck1 == TRUE && nCheck2 == TRUE)
				{
					AdjustReputation(oPC, oFaction, 50);
					SetGlobalBoolean("tat_TuskenSuit", TRUE);
				}
		}
		else
			{
				if (nCheck0 == FALSE || nCheck1 == FALSE || nCheck2 == FALSE || GetGlobalBoolean("tat_TuskenMad") == TRUE)
					{
						AdjustReputation(oPC, oFaction, -50);
						SetGlobalBoolean("tat_TuskenSuit", FALSE);
						
						object oAreaObject = GetFirstObjectInArea();
						
						while (GetIsObjectValid(oAreaObject) == TRUE)
							{
								AssignCommand(oAreaObject, GN_DetermineCombatRound());
								oAreaObject = GetNextObjectInArea();
							}
					}
			}
}