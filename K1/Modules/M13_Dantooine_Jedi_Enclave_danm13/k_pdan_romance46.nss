// Sandral/Matale Feud outcome - Shen & Rahasia seeking shelter in Enclave

int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 4 && GetGlobalBoolean("DAN_ZHARR_DONE") == FALSE);
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_ZHARR_DONE", TRUE);
		}
	
	return nGlobal;
}