int StartingConditional() {
	if (((GetGlobalNumber("000_HK47_Memory") <= 1) && (GetGlobalNumber("298TEL_Com_Disabled") == 1))) {
		return 1;
	}
	return 0;
}