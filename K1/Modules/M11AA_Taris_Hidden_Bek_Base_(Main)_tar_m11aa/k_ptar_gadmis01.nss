int StartingConditional() {
	
	if (GetGlobalBoolean("Tar_GadonMission") == TRUE)
		{
			return TRUE;
		}
	
	return FALSE;
}