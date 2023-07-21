int StartingConditional() {
	int int1 = ((((GetGlobalNumber("G_JUHANIC_NUM") >= 2) && (GetGlobalBoolean("T_JUHANIC") == 0)) && (GetGlobalNumber("G_JUHANIH_STATE") >= 5)) && (GetGlobalNumber("G_JUHANIP_STATE") < 9));
	if (int1) {
		SetGlobalBoolean("T_JUHANIC", 1);
	}
	return int1;
}

