// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_utility"

void SetState(int nState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
}

int GetState() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetEnteringObject() == oPC && GetState() == FALSE)
		{
			object oTukata1 = GetObjectByTag("kor36_tukata1", 0);
			object oTukata2 = GetObjectByTag("kor36_tukata2", 0);
			object oTukata3 = GetObjectByTag("kor36_tukata3", 0);
			object oIriaz = GetObjectByTag("kor36_iriaz", 0);
			
			if (GetIsObjectValid(oTukata1))
				{
					ChangeToStandardFaction(oTukata1, STANDARD_FACTION_FRIENDLY_2);
				}
			
			if (GetIsObjectValid(oTukata2))
				{
					ChangeToStandardFaction(oTukata2, STANDARD_FACTION_FRIENDLY_2);
				}
			
			if (GetIsObjectValid(oTukata3))
				{
					ChangeToStandardFaction(oTukata3, STANDARD_FACTION_FRIENDLY_2);
				}
			
			if (GetIsObjectValid(oIriaz))
				{
					ChangeToStandardFaction(oIriaz, STANDARD_FACTION_FRIENDLY_1);
				}
			
			event eUser = EventUserDefined(136);
			
			SignalEvent(oTukata1, eUser);
			SignalEvent(oTukata2, eUser);
			SignalEvent(oTukata3, eUser);
			
			SetState(TRUE);
		}
}
