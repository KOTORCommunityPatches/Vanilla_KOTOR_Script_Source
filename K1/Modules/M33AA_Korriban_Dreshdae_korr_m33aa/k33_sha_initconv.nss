// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"

void SetTriggered(int bState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bState);
}

int GetTriggered() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	
	if (GetEnteringObject() == oPC && GetTriggered() == FALSE)
		{
			object oShaar = GetObjectByTag("kor33_shaardan", 0);
			object oWP_PC = GetObjectByTag("KPC_PC_WAY", 0);
			object oWP_PM1 = GetObjectByTag("KPC_NPC1_WAY", 0);
			object oWP_PM2 = GetObjectByTag("KPC_NPC2_WAY", 0);
			
			AssignCommand(oShaar, ClearAllActions());
			
			UT_NPC_InitConversation("kor33_shaardan", "", oWP_PC, oWP_PM1, oWP_PM2);
			
			SetTriggered(TRUE);
		}
}
