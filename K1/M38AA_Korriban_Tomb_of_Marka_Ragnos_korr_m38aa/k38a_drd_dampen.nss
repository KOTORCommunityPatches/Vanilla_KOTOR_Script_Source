int StartingConditional() {
	
	//int nState;
	object oDoor = GetObjectByTag("k38a_door_locked", 0);
	
	if (!UT_GetPlotBooleanFlag(oDoor, SW_PLOT_BOOLEAN_02))
		{
			return TRUE;
		}
	
	return FALSE;
}
