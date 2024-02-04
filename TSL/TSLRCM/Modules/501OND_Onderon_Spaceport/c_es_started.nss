int StartingConditional() {
	if ((GetGlobalNumber("403DXN_ES_Quest") == 0)) {
		return 1;
	}
	return 0;
}