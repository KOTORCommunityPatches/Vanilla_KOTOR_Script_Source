// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	UT_SetPlotBooleanFlag(GetObjectByTag("man26ab_jail", 0), SW_PLOT_BOOLEAN_01, FALSE);
 	
	DelayCommand(0.1, DestroyObject(OBJECT_SELF));
 	DelayCommand(0.2, StartNewModule("ebo_m12aa"));
}
