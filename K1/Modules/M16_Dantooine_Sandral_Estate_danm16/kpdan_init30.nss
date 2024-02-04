// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.


 void main() {
 	
 	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
 		{
 			UT_NPC_InitConversation("dan16_rahasia2", "", OBJECT_INVALID);
 		}
 }
