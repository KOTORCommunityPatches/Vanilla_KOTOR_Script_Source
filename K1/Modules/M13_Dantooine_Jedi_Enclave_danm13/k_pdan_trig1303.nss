#include "k_inc_dan"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (oEntering == GetFirstPC())
		{
			object oWP = GetNearestObjectByTag("dan13_WP_council", OBJECT_SELF, 1);
			
			if (GetGlobalNumber("DAN_JEDI_PLOT") == 0)
				{
					UT_NPC_InitConversation("dan13_zhar", "", OBJECT_INVALID);
				}
				else if (GetGlobalNumber("DAN_JEDI_PLOT") == 1)
					{
						UT_NPC_InitConversation("dan13_vandar", "", OBJECT_INVALID);
						RemoveJournalQuestEntry("dan_council");
					}
					else if (GetGlobalBoolean("DAN_STARMAP_DONE") && GetGlobalBoolean("DAN_VANDAR_DONE") == FALSE)
						{
							if (HasNeverTriggered())
								{
									UT_NPC_InitConversation("dan13_vandar", "", OBJECT_INVALID);
								}
						}
		}
}