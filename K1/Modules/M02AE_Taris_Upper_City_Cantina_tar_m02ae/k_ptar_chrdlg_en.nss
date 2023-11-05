// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (oEntering == GetObjectByTag("christya021", 0) && !UT_GetPlotBooleanFlag(oEntering, SW_PLOT_BOOLEAN_01))
		{
			UT_SetPlotBooleanFlag(oEntering, SW_PLOT_BOOLEAN_01, TRUE);
		}
		else if (GetIsPC(oEntering) && UT_GetPlotBooleanFlag(GetObjectByTag("christya021", 0), SW_PLOT_BOOLEAN_01) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
			{
					UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
					AssignCommand(GetObjectByTag("noble021", 0), ActionStartConversation(GetObjectByTag("christya021", 0), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
			}
}
