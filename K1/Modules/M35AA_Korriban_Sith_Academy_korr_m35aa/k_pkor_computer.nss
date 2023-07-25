#include "k_inc_utility"

int StartingConditional() {
	
	if (AutoDC(1, SKILL_COMPUTER_USE, GetPCSpeaker()))
		{
			return TRUE;
		}
	
	return FALSE;
}
