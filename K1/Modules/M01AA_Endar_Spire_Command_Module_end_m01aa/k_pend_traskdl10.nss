#include "k_inc_end"

int StartingConditional() {
	
	int nState = FALSE;
	
	if (GetTraskState() == TRASK_MUST_MEDPACK)
		{
			if (GetCurrentHitPoints(GetFirstPC()) < GetMaxHitPoints(GetFirstPC()))
				{
					nState = TRUE;
				}
				else
					{
						SetTraskState(TRASK_DEFAULT);
					}
		}
	
	return nState;
}
