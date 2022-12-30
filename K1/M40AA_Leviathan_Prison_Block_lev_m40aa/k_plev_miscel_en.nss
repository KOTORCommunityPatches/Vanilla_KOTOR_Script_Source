// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oGuard = GetObjectByTag("levguard401", 0);
 	object oDoor = GetNearestObjectByTag("lev40_cell08", OBJECT_SELF, 1);
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && GetGlobalNumber("Lev_Escape") == 1)
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			SetLocked(oDoor, FALSE);
 			AssignCommand(oDoor, ActionOpenDoor(oDoor));
 			
 			AssignCommand(oGuard, ActionStartConversation(GetFirstPC(), "lev40_mission", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 }
