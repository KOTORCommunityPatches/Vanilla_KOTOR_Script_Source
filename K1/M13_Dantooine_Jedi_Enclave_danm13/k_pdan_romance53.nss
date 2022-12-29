int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 7 && GetGlobalBoolean("DAN_CRATISS_DONE") == FALSE);
	
	if (nGlobal)
		{
			SetGlobalBoolean("DAN_CRATISS_DONE", TRUE);
		}
	
	return nGlobal;
}
