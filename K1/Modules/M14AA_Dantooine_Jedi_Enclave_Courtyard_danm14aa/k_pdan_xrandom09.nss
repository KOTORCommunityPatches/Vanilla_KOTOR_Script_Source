// Original could not recompile with a "Not all paths return a value" error.

int StartingConditional() {
	
	int nGlobal;
	int nRandom;
	
	if (nRandom > 0 && nRandom < 6)
		{
			nGlobal = GetGlobalNumber("DAN_RANDOM") && (5 == (5 || 6));
			
			return nGlobal;
		}
}
