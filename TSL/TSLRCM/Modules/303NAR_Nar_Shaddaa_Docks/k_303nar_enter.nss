// Prototypes
void sub1();

void sub1() {
	if ((GetGlobalNumber("303NAR_HK_Spawn") == 0)) {
		CreateObject(1, "p_hk048", GetLocation(GetObjectByTag("wp_hk48_1", 0)), 0);
		CreateObject(1, "p_hk049", GetLocation(GetObjectByTag("wp_hk49_1", 0)), 0);
		CreateObject(1, "p_hk050", GetLocation(GetObjectByTag("wp_hk50_1", 0)), 0);
		DestroyObject(GetObjectByTag("ZhugThug1", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("ZhugShooter", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand1", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand2", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand3", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand4", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind2", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind2", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand1", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand2", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand3", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand4", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand1", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand2", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand3", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand4", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind3", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind3", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind2", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind3", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand5", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand5", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand5", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand5", 3), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand6", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand6", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand6", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand6", 3), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand6", 4), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Gand6", 5), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind3", 3), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("GandFind3", 4), 0.0, 0, 0.0, 0);
		SetGlobalNumber("303NAR_HK_spawn", 1);
	}
	else {
		return;
	}
}

void main() {
	if (GetLocalBoolean(GetObjectByTag("tr_hanharrconv", 0), 31)) {
		SoundObjectStop(GetObjectByTag("hhroar", 0));
		SoundObjectStop(GetObjectByTag("kathgrowl", 0));
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetGlobalNumber("351NAR_G0T0_Ship") && (!GetLocalBoolean(OBJECT_SELF, 55)))) {
			SetLocalBoolean(OBJECT_SELF, 5, 1);
			YavinHackDoorClose(GetObjectByTag("TO_304NAR", 0));
			object oDoor_vogga002 = GetObjectByTag("door_vogga002", 0);
			if (GetIsObjectValid(oDoor_vogga002)) {
				AssignCommand(oDoor_vogga002, ActionUnlockObject(oDoor_vogga002));
				AssignCommand(oDoor_vogga002, ActionOpenDoor(oDoor_vogga002));
			}
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
		if ((((((GetObjectByTag("AirTaxi", 0) == OBJECT_INVALID) && GetGlobalNumber("302NAR_Airspeeder_41")) && GetGlobalNumber("302NAR_Airspeeder_42")) && GetGlobalNumber("302NAR_Airspeeder_43")) && (GetGlobalNumber("302NAR_Airspeeder_44") == 2))) {
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
		if ((GetGlobalNumber("351NAR_Ebon_Released") != 0)) {
			SetAreaUnescapable(0);
			sub1();
		}
	}
}