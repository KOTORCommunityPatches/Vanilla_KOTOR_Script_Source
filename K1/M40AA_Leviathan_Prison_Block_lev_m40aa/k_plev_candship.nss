// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oInvis = GetObjectByTag("lev40_candtalker", 0);
 	
 	if (GetIsPC(oEntering) && GetGlobalNumber("LEV_ELEVATOR") == 1 && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			Db_PostString("SPEAKING...", 5, 5, 5.0);
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 }
