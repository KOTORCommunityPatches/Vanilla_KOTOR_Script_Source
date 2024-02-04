// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_dan"
 
 void main() {
 	
 	object oExiting = GetExitingObject();
 	
 	if (IsObjectPartyMember(oExiting) && GetIsObjectValid(GetObjectByTag("dan14_handon", 0)) && HasNeverTriggered())
 		{
 			AssignCommand(GetObjectByTag("dan14_bolook", 0), ActionStartConversation(oExiting, "dan14_bolookt", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
