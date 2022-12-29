#include "k_inc_utility"

void main() {
	
	if ((!GetIsOpen(OBJECT_SELF)))
		{
			return;
		}
	
	if ((!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01)))
		{
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
		}
		else
			{
				UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE);
				ActionCloseDoor(OBJECT_SELF);
			}
}
