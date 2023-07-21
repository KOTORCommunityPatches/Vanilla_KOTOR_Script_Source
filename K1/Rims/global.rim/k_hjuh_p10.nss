int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_JUHANIP_STATE") >= 6) && (GetGlobalNumber("G_JUHANIP_STATE") <= 10)) && (GetGlobalBoolean("K_AT_EBON_HAWK") == 1));
	return int1;
}

