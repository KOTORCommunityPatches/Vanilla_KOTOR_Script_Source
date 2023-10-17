#include "k_inc_kas"

int StartingConditional() {
	
	if (GetChuundarDeadGlobal() == TRUE && Random(3) == 1)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
