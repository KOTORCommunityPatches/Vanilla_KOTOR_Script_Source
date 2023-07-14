#include "k_inc_utility"

int StartingConditional() {
	
	if (GetGlobalBoolean("MAN_AREA1"))
		{
			return FALSE;
		}
	
	return TRUE;
}
