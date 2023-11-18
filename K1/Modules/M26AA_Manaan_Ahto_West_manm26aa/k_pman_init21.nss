// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
		{
			AssignCommand(GetObjectByTag("man26_nilko", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
