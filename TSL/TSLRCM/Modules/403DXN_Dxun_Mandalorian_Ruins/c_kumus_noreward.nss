int StartingConditional() {
	if ((!GetGlobalBoolean("402DXN_Kumus_Reward"))) {
		return 1;
	}
	return 0;
}