#include "k_inc_kas"

int StartingConditional() {
	
	if (GetJaarakDeadGlobal() == TRUE || GetJaarakFreeGlobal() == TRUE)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
