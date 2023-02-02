int StartingConditional() {
	
	int nGizka = GetGlobalNumber("EBO_GIZKA_PLOT");
	int nHawk = GetGlobalBoolean("k_at_Ebon_Hawk");
	
	if (nGizka == 1 || nGizka == 2 && nHawk == TRUE)
		{
			return TRUE;
		}
	
	return FALSE;
}
