// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oCSHelper = GetObjectByTag("tar03_gangtalker", 0);
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			AssignCommand(oCSHelper, ActionStartConversation(oCSHelper));
 		}
 }