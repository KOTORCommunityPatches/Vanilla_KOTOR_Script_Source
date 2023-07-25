// Byte code does not match
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
	
	object oPC = GetPartyMemberByIndex(0);
	object oTort = GetObjectByTag("kor35_torturer", 0);
	
	if (GetEnteringObject() == oPC && GetState() == FALSE)
		{
			SetState(TRUE);
			
			AssignCommand(oTort, ClearAllActions());
			
			UT_NPC_InitConversation("kor35_torturer", "", OBJECT_INVALID);
		}
}
