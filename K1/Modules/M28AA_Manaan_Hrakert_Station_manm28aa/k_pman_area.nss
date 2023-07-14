#include "k_inc_utility"

void main() {
	
	int nNum = UT_DeterminesItemCost(5, SKILL_COMPUTER_USE);
	
	UT_RemoveComputerSpikes(nNum);
	
	SetGlobalBoolean("MAN_AREA1", TRUE);
	
	RevealMap();
}
