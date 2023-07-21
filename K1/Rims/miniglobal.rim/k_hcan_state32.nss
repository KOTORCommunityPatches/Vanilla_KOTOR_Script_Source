int StartingConditional() {
	int int1 = ((GetGlobalBoolean("LEV_MALDREAM") == 1) && (GetGlobalBoolean("T_CANDR") == 0));
	if (int1) {
		SetGlobalBoolean("T_CANDR", 1);
	}
	return int1;
}

