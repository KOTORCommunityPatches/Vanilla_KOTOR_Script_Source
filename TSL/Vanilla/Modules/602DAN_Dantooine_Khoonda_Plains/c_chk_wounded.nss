int StartingConditional() {
	int int1 = 0;
	int nParam1 = GetScriptParameter(1);
	string string1 = GetTag(OBJECT_SELF);
	string string3;
	if ((string1 == "MilitiaWoundedA")) {
		string3 = "602DAN_Wounded1_State";
	}
	else {
		if ((string1 == "MilitiaWoundedB")) {
			string3 = "602DAN_Wounded2_State";
		}
		else {
			if ((string1 == "MilitiaWoundedC")) {
				string3 = "602DAN_Wounded3_State";
			}
			else {
				if ((string1 == "MilitiaWoundedD")) {
					string3 = "602DAN_Wounded4_State";
				}
			}
		}
	}
	switch (nParam1) {
		case 1:
			if ((GetGlobalNumber(string3) == 0)) {
				int1 = 1;
			}
			break;
		case 2:
			if ((GetGlobalNumber(string3) == 1)) {
				int1 = 1;
			}
			break;
	}
	return int1;
}
