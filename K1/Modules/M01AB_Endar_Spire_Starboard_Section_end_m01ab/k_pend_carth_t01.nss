// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"

void main() {
	
	if (HasNeverTriggered())
		{
			SetCarthState(ROOM7_DEAD);
			AssignCommand(GetCarth(), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
