// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oDoor = GetNearestObjectByTag("lev40_cell08", OBJECT_SELF, 1);
 	object oInvis = GetObjectByTag("lev40_joleetalker", 0);
 	
 	Db_PostString("JOLEE ESCAPE", 5, 5, 5.0);
 	
 	if (IsObjectPartyMember(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && GetGlobalNumber("Lev_Escape") == 3)
 		{
 			Db_PostString("START JOLEE ESCAPE", 5, 5, 5.0);
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			AssignCommand(oDoor, ActionOpenDoor(oDoor));
 			AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 }
