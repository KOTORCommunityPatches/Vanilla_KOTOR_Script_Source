// Sandral/Matale Feud outcome - Shen & Rahasia romance over

int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 5 || GetGlobalNumber("DAN_ROMANCE_PLOT") == 6 && GetGlobalBoolean("DAN_VANDARS_DONE") == FALSE);
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_VANDARS_DONE", TRUE);
		}
	
	return nGlobal;
}
