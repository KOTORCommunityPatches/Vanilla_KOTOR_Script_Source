int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("MAN_LIVEB_STATE") == 3;
	
	if (nGlobal)
		{
			SetGlobalNumber("MAN_LIVEB_STATE", 2);
		}
	
	return nGlobal;
}
