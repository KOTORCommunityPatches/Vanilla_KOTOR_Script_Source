int StartingConditional() {
	if (((GetGlobalNumber("000_HK47_Memory") == 2) && (GetGlobalNumber("298TEL_Com_Disabled") == 1))) {
		return 1;
	}
	return 0;
}

