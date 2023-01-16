// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oPM1;
 	object oPM2;
 	
 	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE && GetGlobalNumber("G_FinalChoice") > 0)
 		{
 			SetGlobalFadeOut();
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			oPM1 = GetPartyMemberByIndex(1);
 			oPM2 = GetPartyMemberByIndex(2);
 			
 			UT_TeleportPartyMember(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("pcstart", 0)));
 			UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("n2start", 0)));
 			UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("n1start", 0)));
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			SetGlobalNumber("K_KOTOR_MASTER", 50);
 			
 			NoClicksFor(0.4);
 			
 			DelayCommand(0.15, AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(GetPartyMemberByIndex(0), "unk41_carth", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 		}
 }
