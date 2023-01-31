#include "k_inc_kas"

int StartingConditional() {
	
	object oSpeaker = GetPCSpeaker();
	
	if ((GetPoacherJobLocal() == TRUE))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}