int StartingConditional() {
	
	if (GetGlobalNumber("tat_SandHistory") > 4)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}