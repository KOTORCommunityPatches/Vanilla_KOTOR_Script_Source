int StartingConditional() {
	int int1 = 0;
	string string1;
	int int2 = 0;
	while ((int2 < 4)) {
		if ((int2 == 0)) {
			string1 = "602DAN_Wounded1_State";
		}
		else {
			if ((int2 == 1)) {
				string1 = "602DAN_Wounded2_State";
			}
			else {
				if ((int2 == 2)) {
					string1 = "602DAN_Wounded3_State";
				}
				else {
					if ((int2 == 3)) {
						string1 = "602DAN_Wounded4_State";
					}
				}
			}
		}
		if ((GetGlobalNumber(string1) == 2)) {
			int1 = 1;
			break;
		}
		(int2++);
	}
	return int1;
}