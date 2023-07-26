int StartingConditional() {
	
	if (GetGlobalBoolean("Tar_BastVulk") == TRUE && GetGlobalBoolean("TAR_VULKARBASE_OPEN") == FALSE)
		{
			return TRUE;
		}
	
	return FALSE;
}
