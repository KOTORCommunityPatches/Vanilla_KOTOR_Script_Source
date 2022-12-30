// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && GetIsObjectValid(GetObjectByTag("Canderous031", 0)))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			UT_NPC_InitConversation("Canderous031", "", OBJECT_INVALID);
 		}
 }
