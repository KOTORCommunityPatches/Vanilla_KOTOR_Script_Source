// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"

void main() {
 	
	SetAreaUnescapable(TRUE);
 	SetTraskState(TRASK_MUST_SWITCH);
 	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
 	AssignCommand(GetPartyMemberByIndex(1), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
}
