// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void main() {
 	
 	object oOpener = GetLastOpenedBy();
 	object oPtyDoor = GetObjectByTag("lev40_partycelldoor", 0);
 	
 	if (GetIsPC(oOpener) || oOpener == OBJECT_SELF) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			Db_PostString("ELEVATOR = 1", 5, 5, 1.0);
 			
 			SetGlobalNumber("LEV_ELEVATOR", 1);
 			SetGlobalBoolean("LEV_RESCUE", TRUE);
 			
 			if (!GetIsOpen(oPtyDoor))
 				{
 					AssignCommand(oPtyDoor, ActionOpenDoor(oPtyDoor));
 				}
 			
 			AssignCommand(GetObjectByTag("bastila400", 0), ActionStartConversation(oOpener, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
