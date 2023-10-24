#include "k_inc_utility"

int StartingConditional() {
	
	if (GetGlobalBoolean("MAN_AREA2"))
		{
			return FALSE;
		}
	
	return TRUE;
}
