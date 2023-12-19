#include "k_inc_dan"

int StartingConditional() {
	
	int nGlobal = UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE && GetGlobalNumber("DAN_JEDI_PLOT") == 7 && GetGlobalBoolean("DAN_BOLOOKF_DONE") == FALSE;
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_BOLOOKF_DONE", TRUE);
		}
	
	return nGlobal;
}
