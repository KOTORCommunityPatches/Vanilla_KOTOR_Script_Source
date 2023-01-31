#include "k_inc_kas"

int StartingConditional() {
	
	if ((GetEliBeenKilledGlobal() == FALSE))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}