int StartingConditional() {
	if ((GetGlobalBoolean("000_PLAYER_GENDER") == 0)) {
		return 1;
	}
	return 0;
}

