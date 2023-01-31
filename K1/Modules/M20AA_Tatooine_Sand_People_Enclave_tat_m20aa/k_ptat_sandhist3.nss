int StartingConditional() {
	
	if (GetGlobalNumber("tat_SandHistory") > 2)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}