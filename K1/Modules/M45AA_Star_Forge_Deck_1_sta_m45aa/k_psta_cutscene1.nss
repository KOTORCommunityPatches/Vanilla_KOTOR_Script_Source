// Byte code does not match
#include "k_inc_utility"

void main() {
	
	object oNPC = GetPartyMemberByIndex(0);
	
	if (((GetEnteringObject() == oNPC) && (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))))
		{
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, 1);
			UT_NPC_InitConversation("sta_cutscene1", "", OBJECT_INVALID);
		}
}