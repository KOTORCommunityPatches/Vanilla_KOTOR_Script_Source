// Sandral/Matale Feud outcome - Building house for Shen & Rahasia

int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 3 && GetGlobalBoolean("DAN_VANDARS_DONE") == FALSE);
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_VANDARS_DONE", TRUE);
		}
	
	return nGlobal;
}
