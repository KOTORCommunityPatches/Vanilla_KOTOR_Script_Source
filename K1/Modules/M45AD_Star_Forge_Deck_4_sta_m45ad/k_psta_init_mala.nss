// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	
	if (GetEnteringObject() == oPC && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01 == FALSE))
		{
			object oMalak = GetObjectByTag("sta_45darthMalak", 0);
			
			UT_SetTalkedToBooleanFlag(oMalak, TRUE);
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
			
			AssignCommand(oMalak, ActionStartConversation(oPC, "k_sta_darthmalak", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
