// Original could not recompile. DeNCS failed to declare EventUserDefined as an event. 

#include "k_inc_utility"

void main() {
	
	event eUser = EventUserDefined(44);
	
	if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO))
		{
			ActionPlayAnimation(20, 1.0, 999.0);
			ActionDoCommand(SignalEvent(OBJECT_SELF, eUser));
		}
}
