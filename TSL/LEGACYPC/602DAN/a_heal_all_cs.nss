struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetGlobalFadeOut(0.0, 0.2, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	int int1 = 0;
	while ((int1 < 4)) {
		string string1;
		string string2;
		string string3;
		if ((int1 == 0)) {
			string1 = "WP_militia_a";
			string2 = "g_militia_a";
			string3 = "602DAN_Wounded1_State";
		}
		else {
			if ((int1 == 1)) {
				string1 = "WP_militia_b";
				string2 = "g_militia_b";
				string3 = "602DAN_Wounded2_State";
			}
			else {
				if ((int1 == 2)) {
					string1 = "WP_militia_c";
					string2 = "g_militia_c";
					string3 = "602DAN_Wounded3_State";
				}
				else {
					if ((int1 == 3)) {
						string1 = "WP_militia_d";
						string2 = "g_militia_d";
						string3 = "602DAN_Wounded4_State";
					}
				}
			}
		}
		object object1 = GetObjectByTag(string2, 0);
		object object3 = GetObjectByTag(string1, 0);
		SetGlobalNumber(string3, 2);
		SetOrientOnClick(object1, 1);
		SetLockOrientationInDialog(object1, 0);
		AssignCommand(object1, DelayCommand(1.0, ClearAllActions()));
		AssignCommand(object1, DelayCommand(1.0, ActionJumpToLocation(GetLocation(object3))));
		vector struct2 = GetPositionFromLocation(GetLocation(GetFirstPC()));
						;
;
	}
}

