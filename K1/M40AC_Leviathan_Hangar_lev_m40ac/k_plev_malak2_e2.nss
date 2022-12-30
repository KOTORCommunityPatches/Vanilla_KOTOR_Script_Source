// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void main() {
 	
 	object oMalak = GetObjectByTag("darthmalak400", 0);
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && GetGlobalNumber("Lev_MalakVision") > 0)
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			Db_PostString("DARTH TALKING", 5, 5, 5.0);
 			
 			AssignCommand(oMalak, ActionStartConversation(GetFirstPC(), "lev40_darthmala2", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
