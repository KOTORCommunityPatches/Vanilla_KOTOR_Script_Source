int StartingConditional() {
	if (GetGlobalNumber("K_DAN_SWOOP_POINT_01")) {
		return 1;
	}
	return 0;
}