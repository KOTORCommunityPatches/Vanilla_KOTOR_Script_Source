// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_dan"

void main() {
	
	if (HasNeverTriggered() && IsObjectPartyMember(GetEnteringObject()))
		{
			AssignCommand(GetObjectByTag("man28_sur3", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
		}
}
