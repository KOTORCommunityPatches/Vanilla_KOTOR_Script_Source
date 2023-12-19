#include "k_inc_dan"

int StartingConditional() {
	
	int nGlobal = UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE && GetGlobalBoolean("DAN_BOLOOKF_DONE") == FALSE;
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_BOLOOKF_DONE", TRUE);
		}
	
	return nGlobal;
}
