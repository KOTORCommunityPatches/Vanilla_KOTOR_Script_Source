#include "k_inc_kas"

int StartingConditional() {
	
	if (GetStarMapRecievedGlobal() == TRUE)
		{
			return FALSE;
		}
		else
			{
				return TRUE;
			}
}
