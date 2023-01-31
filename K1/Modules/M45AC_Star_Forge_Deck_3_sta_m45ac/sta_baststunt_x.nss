int StartingConditional() {
	
	if (GetGlobalBoolean("STA_BASTILA_STUNT") == FALSE)
		{
			return TRUE;
		}
		
	return FALSE;
}