// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void main() {
 	
 	int nUser = GetUserDefinedEventNumber();
 
 	if (nUser == 1001) // HEARTBEAT
 		{
 			if (GetObjectByTag("mission", 0) == OBJECT_INVALID && GetObjectByTag("zaalbar", 0) == OBJECT_INVALID && GetGlobalNumber("G_FinalChoice") == 1 && IsAvailableCreature(NPC_MISSION) == FALSE)
 				{
 					Db_PostString("both dead", 5, 5, 1.0);
 					
 					SetPartyLeader(NPC_PLAYER);
 					
 					CancelCombat(GetFirstPC());
 					CancelCombat(GetObjectByTag("bastila", 0));
 					NoClicksFor(1.2);
 					
 					DelayCommand(1.0, AssignCommand(GetObjectByTag("bastila", 0), ActionStartConversation(GetFirstPC(), "unk41_bastexit", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
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
 			UT_DoAmbientReaction("cs_gizkabeg");
 		}
 	else if (nUser == 1005) // ATTACKED
 		{
 
 		}
 	else if (nUser == 1006) // DAMAGED
 		{
 
 		}
 	else if (nUser == 1007) // DEATH
 		{
 
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
