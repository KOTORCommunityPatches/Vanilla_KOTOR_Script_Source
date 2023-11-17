// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	object oSithDip = GetObjectByTag("man26_sithac", 0);
 	object oRepDip = GetObjectByTag("man26_repac", 0);
 	
	if (GetIsConversationActive() == FALSE)
		{
			if (GetEnteringObject() == GetPartyMemberByIndex(0) && GetManaanMainPlotVariable() < 3 && HasNeverTriggered())
				{
					AssignCommand(oRepDip, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
				}
		}
 }
