void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetGlobalNumber("351NAR_G0T0_Ship") && (!GetLocalBoolean(OBJECT_SELF, 55)))) {
			SetLocalBoolean(OBJECT_SELF, 5, 1);
			YavinHackDoorClose(GetObjectByTag("TO_304NAR", 0));
			if ((GetObjectByTag("Rod_Jekk", 0) != OBJECT_INVALID)) {
				DestroyObject(GetObjectByTag("Rod_Jekk", 0), 0.0, 0, 0.0, 0);
			}
			if ((GetObjectByTag("Tran_Jekk", 0) != OBJECT_INVALID)) {
				DestroyObject(GetObjectByTag("Tran_Jekk", 0), 0.0, 0, 0.0, 0);
			}
			if ((GetObjectByTag("sullustan_vogga", 0) != OBJECT_INVALID)) {
				DestroyObject(GetObjectByTag("sullustan_vogga", 0), 0.0, 0, 0.0, 0);
			}
			if ((GetObjectByTag("RedEclipseCrew1", 0) != OBJECT_INVALID)) {
				DestroyObject(GetObjectByTag("RedEclipseCrew1", 0), 0.0, 0, 0.0, 0);
			}
			if ((GetObjectByTag("RedEclipseCrew2", 0) != OBJECT_INVALID)) {
				DestroyObject(GetObjectByTag("RedEclipseCrew2", 0), 0.0, 0, 0.0, 0);
			}
			if ((GetObjectByTag("RedEclipseCrew3", 0) != OBJECT_INVALID)) {
				DestroyObject(GetObjectByTag("RedEclipseCrew3", 0), 0.0, 0, 0.0, 0);
			}
			if (GetJournalEntry("30011")) {
				AddJournalQuestEntry("30011", 10, 0);
			}
		}
		if (((GetGlobalNumber("300NAR_Bounty_Attack") > 0) && (GetGlobalNumber("351NAR_G0T0_Ship") == 0))) {
			SetAreaUnescapable(1);
		}
		else {
			if ((GetGlobalNumber("351NAR_G0T0_Ship") == 1)) {
				SetAreaUnescapable(0);
			}
		}
		if ((GetGlobalNumber("201TEL_Chano_Spawn") == 4)) {
			SetGlobalNumber("201TEL_Chano_Spawn", 5);
			CreateObject(1, "chano", GetLocation(GetObjectByTag("wp_chano_sp", 0)), 0);
		}
		if ((((((GetObjectByTag("lndspdr003", 0) == OBJECT_INVALID) && GetGlobalNumber("302NAR_Airspeeder_41")) && GetGlobalNumber("302NAR_Airspeeder_42")) && GetGlobalNumber("302NAR_Airspeeder_43")) && (GetGlobalNumber("302NAR_Airspeeder_44") == 2))) {
			CreateObject(64, "lndspdr003", GetLocation(GetObjectByTag("wp_airtaxi", 0)), 0);
		}
		SetGlobalNumber("303NAR_Entered", 1);
		if (((GetJournalEntry("InterGRU") == 30) && (GetObjectByTag("aaida", 0) == OBJECT_INVALID))) {
			CreateObject(1, "n_commf001", GetLocation(GetObjectByTag("WP_aaida_spawn", 0)), 0);
		}
		if (GetGlobalBoolean("303NAR_SWITCH_TO_PC")) {
			AurPostString("MiraAPTConv", 15, 15, 5.0);
			ExecuteScript("a_miraapatconv", OBJECT_SELF, 0xFFFFFFFF);
		}
	}
}
