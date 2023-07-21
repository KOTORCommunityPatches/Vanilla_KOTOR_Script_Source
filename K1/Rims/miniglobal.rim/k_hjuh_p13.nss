int StartingConditional() {
	int int1 = (GetGlobalBoolean("T_JUHANIR_DONE") == 0);
	if (int1) {
		SetGlobalBoolean("T_JUHANIR_DONE", 1);
	}
	return int1;
}

