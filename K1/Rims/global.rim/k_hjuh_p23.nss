int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_JUHANIP_STATE") == 2) && (GetGlobalNumber("K_STAR_MAP") >= 20)) || ((GetGlobalNumber("G_JUHANIP_STATE") == 3) && (GetGlobalNumber("G_JUHANIH_STATE") == 3)));
	return int1;
}

