// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_dan"

void main() {
 	
 	object oSherruk = GetObjectByTag("dan14_sherruk", 0);
 	
 	if (IsObjectPartyMember(GetEnteringObject()) && GetGlobalNumber("DAN_MAND_STATE") == 4 && UT_GetTalkedToBooleanFlag(oSherruk) == FALSE)
 		{
 			int nIndex = 0;
 			
 			while (nIndex <= 2)
 				{
 					CancelCombat(GetPartyMemberByIndex(nIndex));
 					nIndex++;
 				}
 			
 			AssignCommand(oSherruk, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
