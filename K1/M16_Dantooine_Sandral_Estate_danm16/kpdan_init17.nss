#include "k_inc_dan"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (IsObjectPartyMember(oEntering) && HasNeverTriggered())
		{
			AssignCommand(GetObjectByTag("dan16_cutscene01", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
