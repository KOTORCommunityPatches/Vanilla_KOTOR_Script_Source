// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	int nUser = GetUserDefinedEventNumber();
 
 	if (nUser == 1001) // HEARTBEAT
 		{
 
 		}
 	else if (nUser == 1002) // PERCEIVE
 		{
 
 		}
 	else if (nUser == 1003) // END OF COMBAT
 		{
 
 		}
 	else if (nUser == 1004) // ON DIALOGUE
 		{
 
 		}
 	else if (nUser == 1005) // ATTACKED
 		{
 
 		}
 	else if (nUser == 1006) // DAMAGED
 		{
 
 		}
 	else if (nUser == 1007) // DEATH
 		{
 			object oThug01 = GetObjectByTag("kas_xor2", 0);
 			object oThug02 = GetObjectByTag("kas_xor3", 0);
 			
 			if (!GetIsObjectValid(oThug01) || GetIsDead(oThug01) && !GetIsObjectValid(oThug02) || GetIsDead(oThug02) && UT_GetTalkedToBooleanFlag(GetObjectByTag("kas_xor1", 0))
 				{
 					CancelCombat(GetPartyMemberByIndex(0));
 					CancelCombat(GetPartyMemberByIndex(1));
 					CancelCombat(GetPartyMemberByIndex(2));
 					NoClicksFor(1.2);
 					AssignCommand(GetObjectByTag("invis_xor_conv", 0), DelayCommand(1.0, ActionStartConversation(OBJECT_SELF, "", FALSE, 0, FALSE)));
 				}
 		}
 	else if (nUser == 1008) // DISTURBED
 		{
 
 		}
 	else if (nUser == 1009) // BLOCKED
 		{
 
 		}
 	else if (nUser == 1010) // SPELL CAST AT
 		{
 
 		}
 	else if (nUser == HOSTILE_RETREAT)
 		{
 			UT_ReturnToBase("wp_homebase");
 		}
 }