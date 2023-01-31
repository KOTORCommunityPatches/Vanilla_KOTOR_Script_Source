#include "k_inc_kas"

int StartingConditional() {
	
	object oSpeaker = GetPCSpeaker();
	object oGland = GetItemPossessedBy(oSpeaker, "kas24_tachgland");
	
	if (((GetPoacherJobLocal() == TRUE) && (GetIsObjectValid(oGland) == TRUE)))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}