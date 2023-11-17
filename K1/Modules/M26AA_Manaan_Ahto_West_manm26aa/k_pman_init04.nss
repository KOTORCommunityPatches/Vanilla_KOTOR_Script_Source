// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	object oEntering = GetEnteringObject();
 	
	if (IsObjectPartyMember(oEntering) && HasNeverTriggered())
		{
			object oSith = GetObjectByTag("man26_sithneg", 0);
			object oMerc = GetObjectByTag("man26_echmerc3", 0);
			
			AssignCommand(oSith, ClearAllActions());
			AssignCommand(oSith, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
 }
