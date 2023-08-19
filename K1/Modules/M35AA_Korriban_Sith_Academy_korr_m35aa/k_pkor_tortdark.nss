#include "k_inc_utility"

void main() {
	
	ExecuteScript("k_pkor_injectsnd", OBJECT_SELF, -1);
	
	if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
		{
			object oPC = GetFirstPC();
			
			AdjustAlignment(oPC, 3, 3);
			
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, 1);
		}
}
