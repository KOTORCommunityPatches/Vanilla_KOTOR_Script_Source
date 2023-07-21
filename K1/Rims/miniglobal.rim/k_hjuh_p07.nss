int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIP_STATE") == 6) && (GetGlobalNumber("K_STAR_MAP") > 20));
	if (int1) {
		if ((GetGlobalNumber("G_JUHANI_PLOT") == 4)) {
			SetGlobalNumber("G_JUHANIP_STATE", 10);
		}
		else {
			SetGlobalNumber("G_JUHANIP_STATE", 7);
		}
	}
	return int1;
}

