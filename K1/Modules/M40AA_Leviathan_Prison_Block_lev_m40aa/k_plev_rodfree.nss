// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oLevRodian = GetObjectByTag("LevRodian", 0);
 	
 	ExecuteScript("k_plev_ffsndoff", OBJECT_SELF, -1);
 	
 	if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			if (GetDistanceBetween(OBJECT_SELF, GetFirstPC()) < 10.0)
 				{
 					AssignCommand(oLevRodian, ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE));
 				}
 		}
 }