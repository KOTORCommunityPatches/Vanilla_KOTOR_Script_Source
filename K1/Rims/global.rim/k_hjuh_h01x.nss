int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIH_STATE") == 1) && (GetGlobalNumber("T_LEVH") == 0));
	return int1;
}

