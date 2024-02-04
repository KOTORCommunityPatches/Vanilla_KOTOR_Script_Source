// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"
 
 void main() {
 	
 	if (GetIsPC(GetEnteringObject()) == TRUE)
 		{
 			if (!GetIsInConversation(GetFirstPC()))
 				{
 					if (GetGlobalBoolean("UNK_TEMP5") == FALSE && GetGlobalBoolean("UNK_TEMP6") == FALSE && GetGlobalBoolean("UNK_THEONE") == FALSE ||
 					GetGlobalBoolean("UNK_TEMP6") == FALSE && GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE && GetGlobalBoolean("Unk_Ambush_Temp") == FALSE ||
 					GetGlobalBoolean("UNK_RED_TALK") == TRUE && GetGlobalBoolean("UNK_TEMP6") == FALSE && GetGlobalBoolean("UNK_REDHOSTILE") == FALSE)
 						{
 							SetGlobalFadeOut();
 							
 							SetGlobalBoolean("UNK_TEMP5", TRUE);
 							SetGlobalBoolean("Unk_Ambush_Temp", TRUE);
 							
 							if (GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE)
 								{
 									SetGlobalBoolean("UNK_TEMP6", TRUE);
 								}
 							
 							SetPartyLeader(NPC_PLAYER);
 							
 							DelayCommand(0.5, UT_TeleportWholeParty(GetObjectByTag("playerwp1", 0), GetObjectByTag("pm1wp1", 0), GetObjectByTag("pm2wp1", 0)));
 							
 							NoClicksFor(1.2);
 							
 							DelayCommand(1.0, AssignCommand(GetObjectByTag("invis", 0), ActionStartConversation(GetFirstPC(), "unk41_blackrak", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 						}
 				}
 		}
 }
