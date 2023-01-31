// Sandral/Matale Feud outcome - Both families wiped out

int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 7 && GetGlobalBoolean("DAN_VANDARS_DONE") == FALSE);
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_VANDARS_DONE", TRUE);
		}
	
	return nGlobal;
}