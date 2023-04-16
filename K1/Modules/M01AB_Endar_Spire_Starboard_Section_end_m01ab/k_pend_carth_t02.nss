// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"

void main() {
	
	if (HasNeverTriggered())
		{
			SetCarthState(1);
			AssignCommand(GetCarth(), ActionWait(1.0));
			AssignCommand(GetCarth(), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
