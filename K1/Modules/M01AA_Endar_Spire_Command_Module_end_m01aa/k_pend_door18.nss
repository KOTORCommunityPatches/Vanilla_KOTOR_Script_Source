// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"
 
 void main() {
 	
	object oPC = GetFirstPC();
 	
	if (HasNeverTriggered())
		{
			SetPartyLeader(NPC_PLAYER);
			
			ExecuteScript("k_pman_npcstop", GetTrask(), -1);
			
			SetGlobalFadeOut();
			DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.5));
			
			UT_TeleportWholeParty(GetObjectByTag("wp_end_room3_1", 0), GetObjectByTag("wp_end_room3_2", 0), OBJECT_INVALID);
			
			NoClicksFor(0.4);
			
			DelayCommand(0.2, AssignCommand(GetCutsceneObject(1), ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
 }
