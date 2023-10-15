// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (IsObjectPartyMember(GetEnteringObject() && HasNeverTriggered())
		{
			AurPostString(("Giving Award: " + IntToString(GetCurrentStealthXP())), 5, 6, 5.0);
			AwardStealthXP(GetFirstPC());
		}
 }
