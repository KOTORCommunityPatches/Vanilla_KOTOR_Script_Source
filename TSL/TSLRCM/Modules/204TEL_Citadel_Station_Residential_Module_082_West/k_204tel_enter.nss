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
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetGlobalBoolean("204TEL_Spawn_B4D4")) {
			SetGlobalBoolean("204TEL_Spawn_B4D4", 0);
			CreateObject(1, "n_b4d4", GetLocation(GetObjectByTag("WP_DRDITH1", 0)), 0);
		}
		if ((GetGlobalNumber("203TEL_Czerka_Attack") == 1)) {
			if ((!GetGlobalBoolean("204TEL_Attack_Spawned"))) {
				SetGlobalBoolean("204TEL_Attack_Spawned", 1);
				object o203_Moza = GetObjectByTag("203_Moza", 0);
				SetLocalBoolean(OBJECT_SELF, 36, 1);
				AssignCommand(o203_Moza, ClearAllActions());
				AssignCommand(o203_Moza, ActionJumpToObject(GetObjectByTag("wp_moza_attack_01", 0), 1));
				sub1("Ithorian", 0);
				sub1("Door_Ith_01", 0);
				sub1("d_ith_plant", 0);
				sub1("d_ith_office", 1);
				SetEncounterActive(1, GetObjectByTag("merc_entry", 0));
				SetEncounterActive(1, GetObjectByTag("merc_main", 0));
				SetEncounterActive(1, GetObjectByTag("merc_plant", 0));
				CreateObject(1, "203_merc005", GetLocation(GetObjectByTag("wp_mercl_01", 0)), 0);
				CreateObject(1, "merc_bguard1", GetLocation(GetObjectByTag("wp_mercbg1_01", 0)), 0);
				CreateObject(1, "merc_bguard2", GetLocation(GetObjectByTag("wp_mercbg2_01", 0)), 0);
			}
		}
	}
}