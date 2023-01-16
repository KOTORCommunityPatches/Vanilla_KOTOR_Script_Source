int StartingConditional() {
	
	if (GetGlobalNumber("tat_SandHistory") > 0)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
