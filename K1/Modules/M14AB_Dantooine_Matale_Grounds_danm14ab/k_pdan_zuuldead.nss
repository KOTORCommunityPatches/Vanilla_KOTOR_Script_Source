#include "k_inc_utility"

int StartingConditional() {
	
	if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_10) == TRUE)
		{
			return TRUE;
		}
	
	return FALSE;
}