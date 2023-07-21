int StartingConditional() {
	int int1 = ((GetGlobalBoolean("T_JUHANIKD") == 1) && (GetGlobalBoolean("T_JUHANIKF") == 0));
	if (int1) {
		SetGlobalBoolean("T_JUHANIKF", 1);
	}
	return int1;
}

