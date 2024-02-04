// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"

 void main() {
 	
 	object oInvis = GetObjectByTag("tar10_kandtalker", 0);
 	
 	if (UT_GetTalkedToBooleanFlag(oInvis) == FALSE)
 		{
 			SetPartyLeader(NPC_PLAYER);
 			
 			NoClicksFor(1.2);
 			
 			DelayCommand(1.0, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 		}
 }
