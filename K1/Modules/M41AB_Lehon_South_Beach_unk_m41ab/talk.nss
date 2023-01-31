// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	if (GetIsPC(GetEnteringObject()) == TRUE)
 		{
 			SetGlobalFadeOut();
 			
 			DestroyObject(GetObjectByTag("blowtrig1", 0));
 			DestroyObject(GetObjectByTag("blowtrig2", 0));
 			DestroyObject(GetObjectByTag("blowtrig3", 0));
 			DestroyObject(GetObjectByTag("blowtrig4", 0));
 			DestroyObject(GetObjectByTag("blowtrig5", 0));
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			DelayCommand(0.5, UT_TeleportWholeParty(GetObjectByTag("playerwp", 0), GetObjectByTag("pm1wp", 0), GetObjectByTag("pm2wp", 0)));
 			
 			NoClicksFor(1.2);
 			
 			DelayCommand(1.0, AssignCommand(GetObjectByTag("invisp", 0), ActionStartConversation(GetFirstPC(), "unk41_holo", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 			
 			DelayCommand(1.5, DestroyObject(OBJECT_SELF));
 		}
 }