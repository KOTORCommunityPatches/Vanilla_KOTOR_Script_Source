int StartingConditional() {
	
	int nGlobalA;
	int nGlobalB;
	
	nGlobalA = GetGlobalBoolean("G_Paz_JustPlayed") == TRUE && GetLastPazaakResult() == 1;
	
	if (nGlobalA)
		{
			nGlobalB = GetGlobalNumber("MAN_GONTON");
			
			SetGlobalNumber("MAN_GONTON", nGlobalB + 1);
			SetGlobalBoolean("G_Paz_JustPlayed", 0);
		}
	
	return nGlobalA;
}
