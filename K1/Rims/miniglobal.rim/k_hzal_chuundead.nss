int StartingConditional() {
	if ((GetGlobalBoolean("kas_ChuundarDead") == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

