#include "k_inc_dan"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering))
		{
			if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01) == FALSE)
				{
					RemovePartyMember(NPC_BASTILA);
					RemovePartyMember(NPC_CARTH);
					
					SetGlobalNumber("DAN_BASTILA_ZONE", 10);
					AddJournalQuestEntry("k_ebonhawk", 1);
					
					AssignCommand(GetBastila(), ActionStartConversation(oEntering, "bastila", 0, 0, TRUE));
					
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
				}
				else if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02) == FALSE && GetGlobalNumber("DAN_JEDI_PLOT") == 1)
					{
						RemovePartyMember(NPC_CARTH);
						
						object oCarth = GetObjectByTag("carth", 0);
						
						SetGlobalNumber("DAN_CARTH_ZONE", 4);
						
						AssignCommand(oCarth, ActionStartConversation(oEntering, "carth", 0, 0, TRUE));
						
						UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
					}
			
			UT_SpawnMessenger();
		}
}