// Byte code does not match

#include "k_inc_end"
 
 void main() {
 	
 	object oLast = GetLastOpenedBy();
 	
 	if (GetFirstPC() != oLast)
 		{
 			SetPartyLeader(NPC_PLAYER);
 		}
 	
 	ExecuteScript("k_pend_trasknkd", GetTrask(), -1);
 	
 	NoClicksFor(0.3);
 	
 	DelayCommand(0.1, AssignCommand(GetCutsceneObject(3), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 }
