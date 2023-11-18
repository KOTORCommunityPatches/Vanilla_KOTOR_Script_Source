int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("G_Paz_JustPlayed") == TRUE && GetLastPazaakResult() == 0;
	
	if (nGlobal)
		{
			SetGlobalBoolean("G_Paz_JustPlayed", FALSE);
		}
	
	return nGlobal;
}
