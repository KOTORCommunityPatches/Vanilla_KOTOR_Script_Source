// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"
 
 void main() {
 	
 	object oLast = GetLastOpenedBy();
 	
 	if (GetFirstPC() != oLast)
 		{
 			SetPartyLeader(NPC_PLAYER);
 		}
 	
 	ExecuteScript("k_pend_trasknkd", GetTrask());
 	
 	NoClicksFor(0.3);
 	
 	DelayCommand(0.1, AssignCommand(GetCutsceneObject(3), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 }
