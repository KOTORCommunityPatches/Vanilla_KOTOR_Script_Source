// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_dan"

void main() {
	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
		{
			UT_NPC_InitConversation("man26_sitharg", "", OBJECT_INVALID);
		}
}
