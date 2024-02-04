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
	
	if (GetEnteringObject() == oPC && GetState() == FALSE)
		{
			SetState(TRUE);
			
			object oSith = GetObjectByTag("kor35_sithduel", 0);
			object oCaptive = GetObjectByTag("kor35_captive9", 0);
			
			ChangeToStandardFaction(oSith, STANDARD_FACTION_FRIENDLY_1);
			ChangeToStandardFaction(oCaptive, STANDARD_FACTION_FRIENDLY_2);
			
			event eUser = EventUserDefined(135);
			
			SignalEvent(oSith, eUser);
		}
}
