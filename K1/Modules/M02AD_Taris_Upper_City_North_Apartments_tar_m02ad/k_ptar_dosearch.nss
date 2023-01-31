#include "k_inc_utility"

void main() {
	
	UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sithcommander", 0), SW_PLOT_BOOLEAN_01, TRUE);
	UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sithtrooper", 0), SW_PLOT_BOOLEAN_02, TRUE);
	UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sithtrooper2", 0), SW_PLOT_BOOLEAN_03, TRUE);
	
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("tar02_wpsearch2", 0));
}