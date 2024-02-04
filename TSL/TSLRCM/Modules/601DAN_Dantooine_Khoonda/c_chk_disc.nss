int StartingConditional() {
	int nGlobal = GetGlobalNumber("601DAN_Rumor_Militia");
	int int3 = GetGlobalNumber("000_Disc_End_1");
	if (((nGlobal == 1) && (int3 == 0))) {
		return 1;
	}
	else {
		if (((nGlobal == 1) && (int3 >= 1))) {
			IncrementGlobalNumber("601DAN_Rumor_Militia", 1);
			return 0;
		}
		else {
			return 0;
		}
	}
}