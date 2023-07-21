int StartingConditional() {
	int int1 = (GetGlobalNumber("K_XOR_AMBUSH") == 1);
	if (int1) {
		DelayCommand(2.0, SetGlobalNumber("K_XOR_AMBUSH", 2));
	}
	return int1;
}

