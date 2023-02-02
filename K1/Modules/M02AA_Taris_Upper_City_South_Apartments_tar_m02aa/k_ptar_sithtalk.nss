// Byte code does not match

#include "k_inc_utility"
 void main() {
 	
 	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			ActionStartConversation(GetObjectByTag("trooper1_invis", 0));
 		}
 }
