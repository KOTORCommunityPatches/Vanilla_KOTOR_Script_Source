// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	object oInvis = GetObjectByTag("sta_trgcutscene2", 0);
	
	if (GetIsPC(GetEnteringObject()) && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01) && !UT_GetPlotBooleanFlag(oInvis, SW_PLOT_BOOLEAN_01))
		{
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
			
			event eUser = EventUserDefined(451);
			object oDarkJedi1 = GetObjectByTag("k_sta_darkjedi1", 0);
			object oDarkJedi2 = GetObjectByTag("k_sta_darkjedi2", 0);
			object oDarkJedi3 = GetObjectByTag("k_sta_darkjedi3", 0);
			
			NoClicksFor(0.7);
			
			DelayCommand(0.5, AssignCommand(GetObjectByTag("sta_cutscene2", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
		}
}
