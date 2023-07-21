int StartingConditional() {
	int int1 = (GetGlobalNumber("G_JUHANIH_STATE") < 7);
	if (int1) {
		SetGlobalBoolean("T_JUHANIR_DONE", 1);
	}
	return int1;
}

