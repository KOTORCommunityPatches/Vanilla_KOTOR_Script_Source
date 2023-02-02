// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	int nUser = GetUserDefinedEventNumber();
 
 	if (nUser == 1001) // HEARTBEAT
 		{
 
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
 			object oPC = GetFirstPC();
 			object oInvis = GetObjectByTag("kas25_ritualtalk", 0);
 			
 			SetGlobalBoolean("G_Terentanek_Dead", 1);
 			
 			if (GetJournalEntry("kas23_mainwookplot") < 57)
 				{
 					AddJournalQuestEntry("kas23_mainwookplot", 57, FALSE);
 				}
 				else
 					{
 						AddJournalQuestEntry("kas23_mainwookplot", 87, FALSE);
 					}
 			
 			CancelCombat(oPC);
 			SetPartyLeader(NPC_PLAYER);
 			
 			AssignCommand(oInvis, ActionStartConversation(oPC, "kas25_xbeast_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
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
 	else if (nUser == HOSTILE_RETREAT)
 		{
 			UT_ReturnToBase("wp_homebase");
 		}
 }
