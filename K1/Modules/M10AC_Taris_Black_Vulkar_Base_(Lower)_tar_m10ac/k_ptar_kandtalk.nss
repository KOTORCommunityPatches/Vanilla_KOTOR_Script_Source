// Byte code does not match


 void main() {
 	
 	object oDLGHelper = GetObjectByTag("tar10_kandtalker", 0);
 	
 	if ((UT_GetTalkedToBooleanFlag(oDLGHelper) == 0))
 		{
 			SetPartyLeader(NPC_PLAYER);
 			
 			NoClicksFor(1.2);
 			
 			DelayCommand(1.0, AssignCommand(oDLGHelper, ActionStartConversation(oDLGHelper, "", 0, 0, 0, "", "", "", "", "", "")));
 		}
 }
