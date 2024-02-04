int StartingConditional() {
	if (((GetGlobalNumber("000_Vrook_Dead") == 1) || (GetGlobalNumber("000_Zezkaiell_Dead") == 1))) {
		return 1;
	}
	else {
		return 0;
	}
}