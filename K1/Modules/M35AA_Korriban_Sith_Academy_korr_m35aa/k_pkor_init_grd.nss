// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.
// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"

void SetState(int nState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
}

int GetState() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oSith1 = GetObjectByTag("kor35_sithgrdfix", 0);
	object oSith2 = GetObjectByTag("kor35_sithgrdfx2", 0);
	
	if (GetEnteringObject() == oPC && GetState() == FALSE && (!GetIsDead(oSith1) && GetIsObjectValid(oSith1)) || (!GetIsDead(oSith2) && GetIsObjectValid(oSith2)))
		{
			SetState(TRUE);
			
			event eUser = EventUserDefined(135);
			
			SignalEvent(oSith1, eUser);
			SignalEvent(oSith2, eUser);
		}
}
