void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalNumber("202TEL_Batono", 9);
		ChangeToStandardFaction(GetObjectByTag("203_batono", 0), 1);
	}
	else {
		if ((nParam1 == 2)) {
			CreateObject(1, "merc1_batono", GetLocation(GetObjectByTag("wp_batono1_sp", 0)), 0);
			CreateObject(1, "merc2_batono", GetLocation(GetObjectByTag("wp_batono2_sp", 0)), 0);
			SetGlobalNumber("202TEL_Batono", 7);
			SetLocalBoolean(GetObjectByTag("tr_batonoambush", 0), 36, 1);
		}
		else {
			if ((nParam1 == 3)) {
				CreateObject(1, "merc1_batono", GetLocation(GetObjectByTag("wp_batono1_sp", 0)), 0);
				CreateObject(1, "merc2_batono", GetLocation(GetObjectByTag("wp_batono2_sp", 0)), 0);
				SetLocalBoolean(GetObjectByTag("tr_batonoambush", 0), 36, 1);
				if ((GetGlobalNumber("202TEL_Batono") == 6)) {
					SetGlobalNumber("202TEL_Batono", 7);
				}
			}
			else {
				if ((nParam1 == 4)) {
					DestroyObject(GetObjectByTag("203_batono", 0), 0.0, 0, 0.0, 0);
					StartNewModule("202TEL", "from_203TEL_batono", "", "", "", "", "", "");
				}
				else {
					if ((nParam1 == 5)) {
						AssignCommand(GetObjectByTag("merc1_batono", 0), ActionMoveToObject(GetFirstPC(), 0, 5.0));
						AssignCommand(GetObjectByTag("merc2_batono", 0), ActionMoveToObject(GetFirstPC(), 0, 5.0));
					}
					else {
						if ((nParam1 == 6)) {
							AssignCommand(GetObjectByTag("merc1_batono", 0), ActionMoveToObject(GetObjectByTag("wp_batono1_01", 0), 0, 1.0));
							AssignCommand(GetObjectByTag("merc2_batono", 0), ActionMoveToObject(GetObjectByTag("wp_batono2_01", 0), 0, 1.0));
						}
					}
				}
			}
		}
	}
}

