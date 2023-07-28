#include "k_inc_kas"

int StartingConditional() {
	
	if (GetPlayerAskedAboutSuppliesLocal() == TRUE)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
