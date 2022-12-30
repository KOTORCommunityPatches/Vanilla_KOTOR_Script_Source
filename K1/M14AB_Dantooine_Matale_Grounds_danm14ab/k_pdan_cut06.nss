// Byte code does not match

#include "k_inc_dan"
 
 void main() {
 	
 	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
 		{
 			AssignCommand(GetObjectByTag("dan14ab_mand01", 0), ActionStartConversation(GetFirstPC(), "dan14ab_cut01", 0, 0, 1, "", "", "", "", "", ""));
 		}
 }
