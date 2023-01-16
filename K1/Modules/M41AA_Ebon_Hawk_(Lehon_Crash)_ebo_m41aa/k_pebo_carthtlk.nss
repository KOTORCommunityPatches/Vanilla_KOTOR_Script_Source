// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if ((((GetIsPC(oEntering) == TRUE) && (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)) && (GetGlobalNumber("G_FinalChoice") == 0)))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(oEntering, "unk41_carth", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
