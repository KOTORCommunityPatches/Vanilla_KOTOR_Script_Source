// Byte code does not match

#include "k_inc_dan"
 
 void main() {
 	
 	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
 		{
 			AssignCommand(GetObjectByTag("dan14_cut02", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }