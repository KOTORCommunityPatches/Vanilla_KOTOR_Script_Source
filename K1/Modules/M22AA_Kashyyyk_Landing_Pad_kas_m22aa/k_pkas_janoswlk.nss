#include "k_inc_utility"

int StartingConditional() {
	
	if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02) == FALSE)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
