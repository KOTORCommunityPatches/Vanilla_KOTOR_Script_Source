#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (oEntering == GetFirstPC() && oEntering == GetPartyMemberByIndex(0) && UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07) == FALSE)
		{
			UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07, TRUE);
			UT_NPC_InitConversation("dan14_bolook", "", OBJECT_INVALID);
			SetGlobalBoolean("DAN_BOLOOK_WEST", TRUE);
		}
}