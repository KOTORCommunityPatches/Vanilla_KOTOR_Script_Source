// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	int nUser = GetUserDefinedEventNumber();
 	
 	if (nUser == 1001) //HEARTBEAT
 	{
 		if (GetFinalBattleLocal() == TRUE && GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF)) == FALSE && GetIsConversationActive() == FALSE)
 		{
 			SurrenderToEnemies();
 			ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
 		}
 	}
     else if (nUser == 1002) // PERCEIVE
     {
 
     }
     else if (nUser == 1003) // END OF COMBAT
     {
 
     }
     else if (nUser == 1004) // ON DIALOGUE
     {
 
     }
     else if (nUser == 1005) // ATTACKED
     {
 
     }
     else if (nUser == 1006) // DAMAGED
     {
 
     }
     else if (nUser == 1007) // DEATH
     {
 		SetFreyyrDeadGlobal(TRUE);
     }
     else if (nUser == 1008) // DISTURBED
     {
 
     }
     else if (nUser == 1009) // BLOCKED
     {
 
     }
     else if (nUser == 1010) // SPELL CAST AT
     {
 
     }
 }
