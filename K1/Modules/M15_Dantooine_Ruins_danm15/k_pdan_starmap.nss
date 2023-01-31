#include "k_inc_dan"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if ((IsObjectPartyMember(oEntering) && HasNeverTriggered()))
		{
			SetGlobalFadeOut();
			SetPartyLeader(NPC_PLAYER);
			
			CreateItemOnObject("dan_starpad", GetFirstPC(), 1);
			
			SetGlobalNumber("DAN_BASTILA_ZONE", 4);
			AddJournalQuestEntry("dan_ruins", 20, 0);
			
			
			UT_TeleportWholeParty(GetObjectByTag("wp_player", 0), GetObjectByTag("wp_npc1", 0), GetObjectByTag("wp_npc2", 0));
			
			NoClicksFor(0.4);
			
			AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
			AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
			CancelCombat(GetPartyMemberByIndex(1));
			CancelCombat(GetPartyMemberByIndex(2));
			
			DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.5));
			
			DelayCommand(0.2, AssignCommand(GetObjectByTag("dan15_starmapobj", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
}