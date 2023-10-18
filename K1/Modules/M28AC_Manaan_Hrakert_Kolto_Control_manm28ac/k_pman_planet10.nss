int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("MAN_LIVEB_STATE") == 2;
	
	if (nGlobal)
		{
			SetGlobalNumber("MAN_LIVEB_STATE", 4);
		}
	
	return nGlobal;
}
