// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.
// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetState(int nValue) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nValue);
}


int GetState() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetEnteringObject() == oPC && !GetState() && GetGlobalBoolean("KOR_PRESTIGE_END"))
		{
			ActionStartConversation(oPC, "kor35_trg_endmod", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
			
			SetState(TRUE);
		}
}
