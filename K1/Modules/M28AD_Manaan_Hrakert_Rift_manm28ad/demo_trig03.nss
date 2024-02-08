// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
		{
			CreateItemOnObject("man_starpad", GetFirstPC(), 1);
			
			SetGlobalBoolean("MAN_STARMAP_FOUND", TRUE);
			
			AssignCommand(GetObjectByTag("man28_starmapobj", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
			
			AddJournalQuestEntry("man26_starmap", 40, FALSE);
			
			if (GetGlobalNumber("MAN_PLANET_PLOT") == 4)
				{
					AddJournalQuestEntry("man_planet", 60, FALSE);
				}
				else
					{
						AddJournalQuestEntry("man_planet", 65, FALSE);
					}
		}
 }
