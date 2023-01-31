// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 	{
 		UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 		
 		SetPartyLeader(NPC_PLAYER);
 		
 		AssignCommand(GetObjectByTag("Receptioni091", 0), ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE));
 	}
 }