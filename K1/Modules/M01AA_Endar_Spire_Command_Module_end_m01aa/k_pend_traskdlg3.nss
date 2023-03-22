#include "k_inc_end"

int StartingConditional() {
	
	int nState = FALSE;
	
	if (GetTraskState() == TRASK_MUST_EQUIP)
		{
			if (GetHasEquippedSomething())
				{
					SetTraskState(TRASK_EQUIP_DONE);
				}
				else
					{
						nState = TRUE;
					}
		}
	
	return nState;
}
