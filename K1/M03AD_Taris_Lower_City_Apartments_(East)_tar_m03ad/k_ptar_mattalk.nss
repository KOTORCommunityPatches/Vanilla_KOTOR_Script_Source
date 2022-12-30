// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	SetPartyLeader(NPC_PLAYER);
 	
 	UT_TeleportWholeParty(GetObjectByTag("tar03_wpparty0", 0), GetObjectByTag("tar03_wpparty1", 0), GetObjectByTag("tar03_wpparty2", 0));
 	
 	SetGlobalFadeOut();
 	SetGlobalFadeIn(0.5, 0.5);
 	
 	DelayCommand(0.5, AssignCommand(GetObjectByTag("matrik031", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 }
