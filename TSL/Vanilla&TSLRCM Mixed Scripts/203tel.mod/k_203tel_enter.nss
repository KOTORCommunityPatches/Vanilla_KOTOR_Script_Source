void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		int nGlobal = GetGlobalNumber("203TEL_Current_Thug");
		if ((nGlobal != 5)) {
			location location1 = GetLocation(GetObjectByTag("wp_thgd", 0));
			string string1 = "ERROR";
			string string2 = "ERROR";
			switch (nGlobal) {
				case 2:
					string1 = "n_exthgd002";
					string2 = "203_thugd2";
					break;
				case 3:
					string1 = "n_exthgd003";
					string2 = "203_thugd3";
					break;
				case 4:
					string1 = "n_exthgd004";
					string2 = "203_thugd4";
					SetGlobalNumber("203TEL_Current_Thug", 5);
					break;
			}
			if ((string1 != "ERROR")) {
				object object5 = GetObjectByTag(string2, 0);
				if ((!GetIsObjectValid(object5))) {
					object5 = CreateObject(1, string1, location1, 0);
				}
			}
		}
		if ((GetJournalEntry("high_stakes") == 54)) {
			if (GetIsObjectValid(GetObjectByTag("gam_enforcer", 1))) {
				DestroyObject(GetObjectByTag("gam_enforcer", 1), 0.0, 0, 0.0, 0);
			}
			if (GetIsObjectValid(GetObjectByTag("gam_enforcer", 0))) {
				DestroyObject(GetObjectByTag("gam_enforcer", 0), 0.0, 0, 0.0, 0);
			}
		}
		if ((GetGlobalNumber("202TEL_Falt") == 5)) {
			object o202_Falt = GetObjectByTag("202_Falt", 0);
			CreateObject(1, "n_czerkaoff002", GetLocation(GetObjectByTag("wp_falt_outside", 0)), 0);
		}
		if (GetGlobalBoolean("203TEL_Chano_Destroy")) {
			DestroyObject(GetObjectByTag("203_Chano", 0), 0.0, 0, 0.0, 0);
			SetGlobalBoolean("203TEL_Chano_Destroy", 0);
		}
		if ((GetGlobalNumber("203TEL_Harra") == 5)) {
			CreateObject(1, "203_doton", GetLocation(GetObjectByTag("wp_doton_sp", 0)), 0);
			CreateObject(1, "203_ramana", GetLocation(GetObjectByTag("wp_ramana_sp", 0)), 0);
			CreateObject(1, "gam_enforcer", GetLocation(GetObjectByTag("wp_gamenf1_sp", 0)), 0);
			CreateObject(1, "gam_enforcer", GetLocation(GetObjectByTag("wp_gamenf2_sp", 0)), 0);
		}
		if ((GetGlobalNumber("203TEL_Harra") == 8)) {
			SetGlobalNumber("203TEL_Harra", 9);
			DestroyObject(GetObjectByTag("harra", 0), 0.0, 0, 0.0, 0);
		}
	}
}

