void main() {
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
		if ((GetGlobalNumber("202TEL_Falt") == 5)) {
			object o202_Falt = GetObjectByTag("202_Falt", 0);
			CreateObject(1, "n_czerkaoff002", GetLocation(GetObjectByTag("wp_falt_outside", 0)), 0);
		}
		if (((!GetGlobalNumber("203TEL_BH_CS")) && (!GetGlobalNumber("203TEL_MERC_CS")))) {
			if ((GetGlobalNumber("203TEL_B-4D4_PC") == 0)) {
				if ((((GetGlobalNumber("202TEL_Spawn_Killers") == 5) && (GetGlobalNumber("203TEL_Merc_Attack") == 1)) && ((GetGlobalNumber("202TEL_Spawn_Killers") == 1) && (GetGlobalNumber("203TEL_Merc_Attack") > 0)))) {
					SetGlobalNumber("203TEL_CS_PRIORITY", 1);
				}
			}
		}
		if ((GetGlobalNumber("203TEL_BH_CS") == 0)) {
			if ((((GetGlobalNumber("202TEL_Spawn_Killers") == 1) && (GetGlobalNumber("203TEL_Merc_Attack") == 1)) && (GetGlobalNumber("203TEL_B-4D4_PC") == 0))) {
				SetGlobalNumber("203TEL_BH_CS", 1);
			}
		}
		if ((GetGlobalNumber("203TEL_MERC_CS") == 0)) {
			if (((GetGlobalNumber("203TEL_Merc_Attack") > 0) && (GetGlobalNumber("203TEL_B-4D4_PC") == 0))) {
				SetGlobalNumber("203TEL_MERC_CS", 1);
			}
		}
		if (((GetGlobalNumber("203TEL_BH_CS") == 1) && (GetGlobalNumber("203TEL_MERC_CS") == 1))) {
			if ((GetGlobalNumber("203TEL_MERC_CS") != 2)) {
				SetGlobalNumber("202TEL_Spawn_Killers", 5);
				CreateObject(1, "rod_killer", GetLocation(GetObjectByTag("wp_rodkill_sp", 0)), 0);
				CreateObject(1, "dev_killer", GetLocation(GetObjectByTag("wp_devkill_sp", 0)), 0);
				SetGlobalNumber("203TEL_BH_CS", 2);
			}
		}
		else {
			if ((GetGlobalNumber("203TEL_BH_CS") == 1)) {
				if ((GetGlobalNumber("203TEL_MERC_CS") != 2)) {
					SetGlobalNumber("202TEL_Spawn_Killers", 5);
					CreateObject(1, "rod_killer", GetLocation(GetObjectByTag("wp_rodkill_sp", 0)), 0);
					CreateObject(1, "dev_killer", GetLocation(GetObjectByTag("wp_devkill_sp", 0)), 0);
					SetGlobalNumber("203TEL_BH_CS", 2);
				}
			}
			else {
				if ((GetGlobalNumber("203TEL_MERC_CS") == 1)) {
					if ((GetGlobalNumber("203TEL_BH_CS") != 2)) {
						SetGlobalNumber("203TEL_Merc_Attack", 2);
						object oCzerka = GetObjectByTag("Czerka", 0);
						AssignCommand(oCzerka, ActionCloseDoor(oCzerka));
						CreateObject(1, "203_merc005", GetLocation(GetObjectByTag("wp_merclead_sp", 0)), 0);
						CreateObject(1, "merc_bguard1", GetLocation(GetObjectByTag("wp_mercbg1_sp", 0)), 0);
						CreateObject(1, "merc_bguard2", GetLocation(GetObjectByTag("wp_mercbg2_sp", 0)), 0);
						DestroyObject(GetObjectByTag("203_merc1", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("203_merc2", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("203_merc3", 0), 0.0, 0, 0.0, 0);
						SetEncounterActive(1, GetObjectByTag("merc_entry", 0));
						SetEncounterActive(1, GetObjectByTag("merc_main", 0));
						SetEncounterActive(1, GetObjectByTag("merc_small", 0));
						SetEncounterActive(1, GetObjectByTag("merc_office", 0));
						SetGlobalNumber("203TEL_MERC_CS", 2);
					}
				}
			}
		}
		if ((GetGlobalNumber("262TEL_Escape_Telos") == 1)) {
			if ((!GetGlobalBoolean("203TEL_Spawned_Return"))) {
				SetGlobalBoolean("203TEL_Spawned_Return", 1);
				object oExchange = GetObjectByTag("Exchange", 0);
				AssignCommand(oExchange, ActionCloseDoor(oExchange));
				DelayCommand(0.5, AssignCommand(oExchange, ActionLockObject(oExchange)));
			}
		}
		if ((GetGlobalNumber("203TEL_Harra") == 5)) {
			CreateObject(1, "203_doton", GetLocation(GetObjectByTag("wp_doton_sp", 0)), 0);
			CreateObject(1, "203_ramana", GetLocation(GetObjectByTag("wp_ramana_sp", 0)), 0);
			CreateObject(1, "gam_enforcer", GetLocation(GetObjectByTag("wp_gamenf1_sp", 0)), 0);
			CreateObject(1, "gam_enforcer", GetLocation(GetObjectByTag("wp_gamenf2_sp", 0)), 0);
		}
		if (GetGlobalBoolean("203TEL_Mainframe_Seal")) {
			SetGlobalBoolean("203TEL_Mainframe_Seal", 0);
			object oCzerkaM = GetObjectByTag("CzerkaM", 0);
			AssignCommand(oCzerkaM, ActionCloseDoor(oCzerkaM));
			DelayCommand(0.1, AssignCommand(oCzerkaM, ActionLockObject(oCzerkaM)));
		}
	}
}
