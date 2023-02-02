int StartingConditional() {
	if ((!GetGlobalNumber("502OND_End_First"))) {
		return 0;
	}
	int nGlobal = GetGlobalNumber("000_Jedi_Found");
	int int4 = GetGlobalNumber("403DXN_Return_Trigger");
	if (((int4 == 3) || (int4 < nGlobal))) {
		return 1;
	}
	return 0;
}
