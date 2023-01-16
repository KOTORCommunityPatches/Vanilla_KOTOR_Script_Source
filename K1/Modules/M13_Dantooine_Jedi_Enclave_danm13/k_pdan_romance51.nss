// Sandral/Matale Feud outcome - Shen & Rahasia seeking shelter in Enclave

int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 4 && GetGlobalBoolean("DAN_VANDARS_DONE") == FALSE);
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_VANDARS_DONE", TRUE);
		}
	
	return nGlobal;
}
