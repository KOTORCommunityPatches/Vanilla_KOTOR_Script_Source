#include "k_inc_kas"

int StartingConditional() {
	
	object oSpeaker = GetPCSpeaker();
	
	if (((GetPoacherJobLocal() == TRUE) && (UT_GetNumItems(oSpeaker, "kas24_tachgland") == 1)))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
