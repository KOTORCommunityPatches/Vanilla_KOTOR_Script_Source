int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("MAN_HRAKERT_DONE");
	
	if (nGlobal)
		{
			SetGlobalBoolean("MAN_HRAKERT_DONE", 0);
		}
	return nGlobal;
}