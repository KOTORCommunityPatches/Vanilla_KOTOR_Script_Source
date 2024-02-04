void main() {
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
	SetGlobalNumber(string3, 2);
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
}