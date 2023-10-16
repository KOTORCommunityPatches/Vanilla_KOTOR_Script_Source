// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered() && GetGlobalNumber("MAN_MISSING_PLOT") < 2)
		{
			UT_NPC_InitConversation("man27_shasa", "", OBJECT_INVALID);
		}
 }
