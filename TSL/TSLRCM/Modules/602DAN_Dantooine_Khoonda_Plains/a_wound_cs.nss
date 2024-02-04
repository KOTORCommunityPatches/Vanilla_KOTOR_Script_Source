void main() {
	SetGlobalFadeOut(0.0, 0.2, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	string string1 = GetTag(OBJECT_SELF);
	string string3;
	object oG_militia_d;
	if ((string1 == "MilitiaWoundedA")) {
		string3 = "WP_militia_a";
		oG_militia_d = GetObjectByTag("g_militia_a", 0);
	}
	else {
		if ((string1 == "MilitiaWoundedB")) {
			string3 = "WP_militia_b";
			oG_militia_d = GetObjectByTag("g_militia_b", 0);
		}
		else {
			if ((string1 == "MilitiaWoundedC")) {
				string3 = "WP_militia_c";
				oG_militia_d = GetObjectByTag("g_militia_c", 0);
			}
			else {
				if ((string1 == "MilitiaWoundedD")) {
					string3 = "WP_militia_d";
					oG_militia_d = GetObjectByTag("g_militia_d", 0);
				}
			}
		}
	}
	object oWP_doc_player = GetObjectByTag("WP_doc_player", 0);
	object object8 = GetObjectByTag(string3, 0);
	SetOrientOnClick(oG_militia_d, 1);
	SetLockOrientationInDialog(oG_militia_d, 0);
	AssignCommand(GetFirstPC(), DelayCommand(1.0, ClearAllActions()));
	AssignCommand(GetFirstPC(), DelayCommand(1.0, ActionJumpToLocation(GetLocation(oWP_doc_player))));
	AssignCommand(oG_militia_d, DelayCommand(1.0, ClearAllActions()));
	AssignCommand(oG_militia_d, DelayCommand(1.0, ActionJumpToLocation(GetLocation(object8))));
	AssignCommand(oG_militia_d, ActionPlayAnimation(19, 1.0, (-1.0)));
	SetLocalBoolean(oG_militia_d, 30, 1);
}