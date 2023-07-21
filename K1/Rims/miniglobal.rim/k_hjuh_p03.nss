int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIP_STATE") == 2) && (GetGlobalNumber("K_STAR_MAP") >= 20));
	if (int1) {
		SetGlobalNumber("G_JUHANIP_STATE", 3);
	}
	return int1;
}

