int StartingConditional() {
	if ((GetGlobalNumber("K_CURRENT_PLANET") == 15)) {
		return 1;
	}
	return 0;
}
