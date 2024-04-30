// Prototypes
void sub1(string stringParam1, int intParam2);

void sub1(string stringParam1, int intParam2) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if (GetIsObjectValid(object1)) {
		AssignCommand(object1, ClearAllActions());
		AssignCommand(object1, ActionCloseDoor(object1));
		if (intParam2) {
			AssignCommand(object1, ActionLockObject(object1));
		}
	}
	else {
		AurPostString(("ERROR: Door not found: " + stringParam1), 5, 20, 10.0);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (((!GetGlobalNumber("203TEL_BH_CS")) && (!GetGlobalNumber("203TEL_MERC_CS")))) {
			if ((GetGlobalNumber("203TEL_B-4D4_PC") == 0)) {
				if ((((GetGlobalNumber("202TEL_Spawn_Killers") == 5) && (GetGlobalNumber("203TEL_Merc_Attack") == 1)) && ((GetGlobalNumber("202TEL_Spawn_Killers") == 1) && (GetGlobalNumber("203TEL_Merc_Attack") > 0)))) {
					SetGlobalNumber("203TEL_CS_PRIORITY", 1);
				}
			}
		}
		if ((GetGlobalNumber("203TEL_BH_CS") == 0)) {
			if ((((GetGlobalNumber("202TEL_Spawn_Killers") == 1) && (GetGlobalNumber("202TEL_Bounty_Killers") == 1)) && (GetGlobalNumber("203TEL_B-4D4_PC") == 0))) {
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
						CreateObject(1, "203_merc005", GetLocation(GetObjectByTag("wp_merclead_sp", 0)), 0);
						CreateObject(1, "merc_bguard1", GetLocation(GetObjectByTag("wp_mercbg1_sp", 0)), 0);
						CreateObject(1, "merc_bguard2", GetLocation(GetObjectByTag("wp_mercbg2_sp", 0)), 0);
						DestroyObject(GetObjectByTag("203_merc1", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("203_merc2", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("203_merc3", 0), 0.0, 0, 0.0, 0);
						ChangeToStandardFaction(GetObjectByTag("dead_duck_1", 0), 2);
						ChangeToStandardFaction(GetObjectByTag("dead_duck_2", 0), 2);
						SetEncounterActive(1, GetObjectByTag("merc_entry", 0));
						SetEncounterActive(1, GetObjectByTag("merc_main", 0));
						SetEncounterActive(1, GetObjectByTag("merc_small", 0));
						SetEncounterActive(1, GetObjectByTag("merc_office", 0));
						SetGlobalNumber("203TEL_MERC_CS", 2);
					}
				}
			}
		}
		if (GetGlobalBoolean("203TEL_Mainframe_Seal")) {
			SetGlobalBoolean("203TEL_Mainframe_Seal", 0);
			sub1("CzerkaM", 1);
		}
	}
}

