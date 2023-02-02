// GetStringByStrRef hotfix

#include "k_inc_tat"

void main() {
	
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oFac = GetObjectByTag("tat18_tuskanfac", 0);
	
	if (IsObjectPartyMember(oEntering) == TRUE)
		{
			if (GetGlobalBoolean("tat_TuskenSuit") == TRUE)
				{
					AdjustReputation(oPC, oFac, -50);
					SetGlobalBoolean("tat_TuskenSuit", FALSE);
				}
			
			DelayCommand(0.1, RemoveSandpeopleDisguise());
			
			RevealMap();
		}
}
