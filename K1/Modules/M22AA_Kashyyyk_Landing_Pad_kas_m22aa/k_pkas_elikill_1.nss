#include "k_inc_kas"

int StartingConditional() {
	
	if ((GetEliBeenKilledGlobal() == TRUE))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
