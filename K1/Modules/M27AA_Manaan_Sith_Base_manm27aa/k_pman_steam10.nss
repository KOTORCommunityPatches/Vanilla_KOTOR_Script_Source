// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (HasNeverTriggered())
		{
			AssignCommand(GetObjectByTag("man27_invis01", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
 }
