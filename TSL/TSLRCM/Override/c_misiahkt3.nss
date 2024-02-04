int StartingConditional() {
	return ((GetGlobalNumber("000_HK_Found") > 0) && (GetGlobalNumber("000_HK_Alive") < 0));
}