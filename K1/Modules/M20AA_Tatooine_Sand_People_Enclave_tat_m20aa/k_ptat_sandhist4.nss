int StartingConditional() {
	
	if (GetGlobalNumber("tat_SandHistory") > 3)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}