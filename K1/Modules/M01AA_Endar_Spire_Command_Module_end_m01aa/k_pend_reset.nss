// Byte code does not match

#include "k_inc_end"
 
 void main() {
 	SetAreaUnescapable(TRUE);
 	// Presumably TRASK_MUST_SWITCH
 	SetTraskState(7);
 	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
 	AssignCommand(GetPartyMemberByIndex(1), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
 }
