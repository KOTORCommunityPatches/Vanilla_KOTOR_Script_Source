#include "k_inc_utility"

int StartingConditional() {
	
	int nState;
	int nDrain = SW_PLOT_BOOLEAN_02;
	int nFree = SW_PLOT_BOOLEAN_03;
	int nKill = SW_PLOT_BOOLEAN_04;
	
	if (UT_GetPlotBooleanFlag(OBJECT_SELF, nDrain))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
