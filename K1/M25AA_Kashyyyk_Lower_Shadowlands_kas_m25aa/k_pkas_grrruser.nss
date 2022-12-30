// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	int nUser = GetUserDefinedEventNumber();
 
 	if (nUser == 1001) // HEARTBEAT
 		{
 			if (GetCurrentHitPoints(OBJECT_SELF) < FloatToInt(GetMaxHitPoints(OBJECT_SELF) / 2.0) && GetIsInCombat(OBJECT_SELF) == FALSE && GetIsInConversation(OBJECT_SELF) == FALSE)
 				{
 					object oRWeap = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF);
 					
 					if (GetIsObjectValid(oRWeap) == TRUE)
 						{
 							ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
 							DestroyObject(oRWeap);
 						}
 					
 					PlayAnimation(ANIMATION_LOOPING_PAUSE_TIRED, 1.0, 6.0);
 				}
 			
 			if (GetIsInCombat(OBJECT_SELF) == FALSE && GetIsInConversation(OBJECT_SELF) == FALSE && GetDistanceToObject(oPC) < 10.0 && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
 				{
 					CancelCombat(OBJECT_SELF);
 					CancelCombat(oPC);
 					ActionStartConversation(oPC, "", FALSE, 0, TRUE);
 				}
 		}
 	else if (nUser == 1002) // PERCEIVE
 		{
 
 		}
 	else if (nUser == 1003) // END OF COMBAT
 		{
 			object oMando01 = GetObjectByTag("kas25_mandalor05", 0);
 			object oMando02 = GetObjectByTag("kas25_mandalor06", 0);
 			object oMando03 = GetObjectByTag("kas25_mandalor07", 0);
 			
 			if (GetIsObjectValid(oMando01) == FALSE && GetIsObjectValid(oMando02) == FALSE && GetIsObjectValid(oMando03) == FALSE && GetIsInCombat(OBJECT_SELF) == TRUE)
 				{
 					CancelCombat(OBJECT_SELF);
 				}
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
