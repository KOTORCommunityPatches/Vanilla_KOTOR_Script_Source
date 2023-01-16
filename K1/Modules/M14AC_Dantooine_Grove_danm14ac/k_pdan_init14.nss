// Byte code does not match

void main() {
 	
 	object oSherruk = GetObjectByTag("dan14_sherruk", 0);
 	
 	if (IsObjectPartyMember(GetEnteringObject() && GetGlobalNumber("DAN_MAND_STATE") == 4 && UT_GetTalkedToBooleanFlag(oSherruk) == FALSE)
 		{
 			int nIndex = 0;
 			
 			while (nIndex <= 2)
 				{
 					CancelCombat(GetPartyMemberByIndex(nIndex));
 					(nIndex++);
 				}
 			
 			AssignCommand(oSherruk, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
