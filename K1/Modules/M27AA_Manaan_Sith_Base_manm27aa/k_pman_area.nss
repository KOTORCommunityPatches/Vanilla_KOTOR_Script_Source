#include "k_inc_utility"

void main() {
	
	int nCost = UT_DeterminesItemCost(5, SKILL_COMPUTER_USE);
	
	UT_RemoveComputerSpikes(nCost);
	
	SetGlobalBoolean("MAN_AREA2", TRUE);
	
	RevealMap();
}
