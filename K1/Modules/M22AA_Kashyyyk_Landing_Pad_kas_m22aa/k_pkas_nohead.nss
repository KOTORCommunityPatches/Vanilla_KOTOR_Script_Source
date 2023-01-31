#include "k_inc_kas"

int StartingConditional() {
	
	object oSpeaker = GetPCSpeaker();
	object oHead = GetItemPossessedBy(oSpeaker, "kas24_droidhead");
	
	if (GetDroidTalkGlobal() == TRUE && GetIsObjectValid(oHead) == FALSE)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}