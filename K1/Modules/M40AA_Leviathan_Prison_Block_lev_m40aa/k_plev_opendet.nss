#include "k_inc_utility"

void main() {
	
	object oDoor = GetObjectByTag("lev_detdoor", 0);
	int nCount = UT_DeterminesItemCost(10, SKILL_COMPUTER_USE);
	
	UT_RemoveComputerSpikes(nCount);
	UT_SetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_MODIFY_DROID, TRUE);
	
	SetLocked(oDoor, FALSE);
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
}