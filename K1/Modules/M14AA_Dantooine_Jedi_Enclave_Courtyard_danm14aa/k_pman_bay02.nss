// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_dan"

void main() {
	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
		{
			ActionStartConversation(GetFirstPC(), "dan14_cut01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
		}
}
