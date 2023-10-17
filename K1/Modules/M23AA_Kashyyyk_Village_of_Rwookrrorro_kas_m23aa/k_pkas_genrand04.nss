#include "k_inc_kas"

int StartingConditional() {
	
	if (GetJaarakDeadGlobal() == TRUE && GetJaarakFreeGlobal() == FALSE && Random(3) == 1)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
