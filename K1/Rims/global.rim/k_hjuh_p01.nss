int StartingConditional() {
	int int1 = (GetGlobalNumber("G_JUHANIP_STATE") == 0);
	if (int1) {
		SetGlobalNumber("G_JUHANIP_STATE", 1);
	}
	return int1;
}

