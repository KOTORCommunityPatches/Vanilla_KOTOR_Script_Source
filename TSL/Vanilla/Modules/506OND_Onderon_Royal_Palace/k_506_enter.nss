// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
int sub2(string stringParam1, int intParam2);
object sub1(string stringParam1, int intParam2);

int sub2(string stringParam1, int intParam2) {
	int int1;
	object object1;
	if ((stringParam1 == "")) {
		object1 = OBJECT_SELF;
	}
	else {
		object1 = GetObjectByTag(stringParam1, 0);
	}
	if ((!GetIsObjectValid(object1))) {
		object1 = OBJECT_SELF;
	}
	int nType = GetObjectType(object1);
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	if ((intParam2 == 1)) {
		while (GetIsObjectValid(oAreaObject)) {
			if ((GetStringLeft(GetTag(oAreaObject), GetStringLength(stringParam1)) == stringParam1)) {
				(int1++);
			}
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
		}
	}
	else {
		if ((intParam2 == 2)) {
			while (GetIsObjectValid(oAreaObject)) {
				if ((GetStringRight(GetTag(oAreaObject), GetStringLength(stringParam1)) == stringParam1)) {
					(int1++);
				}
				oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
			}
		}
		else {
			if ((intParam2 == 3)) {
				while (GetIsObjectValid(oAreaObject)) {
					if ((FindSubString(GetTag(oAreaObject), stringParam1) >= 0)) {
						(int1++);
					}
					oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
				}
			}
			else {
				while (GetIsObjectValid(oAreaObject)) {
					if ((GetObjectType(oAreaObject) == nType)) {
						(int1++);
					}
					oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
				}
			}
		}
	}
	if ((intParam2 == 0)) {
		AurPostString(((("Number of object type " + IntToString(nType)) + " = ") + IntToString(int1)), 5, 9, 5.0);
	}
	else {
		AurPostString(((("Number of " + stringParam1) + " = ") + IntToString(int1)), 5, 9, 5.0);
	}
	return int1;
}

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oDoor_gas = GetObjectByTag("ff_outer", 0);
	AurPostString(("500OND_DarkSide_Iziz = " + IntToString(GetGlobalNumber("500OND_DarkSide_Iziz"))), 5, 15, 5.0);
	object oTo_504 = GetObjectByTag("To_504", 0);
	object oVa_officer;
	if ((GetLocalBoolean(oTo_504, 50) || GetLocalBoolean(oTo_504, 43))) {
		return;
	}
	if ((!GetLocalBoolean(oDoor_gas, 40))) {
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
			SetLocked(oDoor_gas, 0);
			AssignCommand(oDoor_gas, ActionOpenDoor(oDoor_gas));
		}
		else {
			oDoor_gas = GetObjectByTag("ff_inner", 0);
			SetLocked(oDoor_gas, 0);
			AssignCommand(oDoor_gas, ActionOpenDoor(oDoor_gas));
		}
		oDoor_gas = GetObjectByTag("door_gas", 0);
		SetLocked(oDoor_gas, 0);
		oDoor_gas = GetObjectByTag("door_gas", 1);
		SetLocked(oDoor_gas, 0);
		SetLocalBoolean(oDoor_gas, 40, 1);
	}
	if (((GetGlobalNumber("500OND_DarkSide_Iziz") == 0) && (!GetLocalBoolean(oTo_504, 50)))) {
		SetLocalBoolean(oTo_504, 50, 1);
		sub1("npc_bostuco", 0);
		sub1("n_repsold002", 0);
		sub1("va_speaker_002", 1);
		sub1("va_speaker_002", 2);
		sub1("va_speaker_002", 3);
		sub1("si_jedi_appr", 0);
		sub1("va_sold_gun", 1);
		sub1("va_sold_gun", 2);
		sub1("va_speaker_1", 0);
		sub1("va_sergeant", 0);
		sub1("va_sold_gren001", 0);
		sub1("va_sold_gun001", 1);
		sub1("va_sold_gun001", 2);
		sub1("g_sithcomm003", 0);
		sub1("roy_sold", 1);
		sub1("roy_sold", 2);
		sub1("roy_sold", 3);
		sub1("roy_sold", 4);
		sub1("vaklu_captain", 0);
		sub1("sith_wrangle", 0);
		sub1("boma_wrangle", 0);
		sub1("maalraas_wrangle", 1);
		sub1("maalraas_wrangle", 2);
		if (((!GetLocalBoolean(oTo_504, 40)) && GetIsObjectValid(GetFirstPC()))) {
			oVa_officer = GetObjectByTag("bostuco", 0);
			SetLocalBoolean(oTo_504, 40, 1);
			AssignCommand(oVa_officer, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	else {
		if ((!GetLocalBoolean(oTo_504, 43))) {
			SetLocalBoolean(oTo_504, 51, 1);
			if (GetIsObjectValid(GetFirstPC())) {
				SetEncounterActive(0, GetObjectByTag("ls_reinforce", 0));
				SetEncounterActive(0, GetObjectByTag("ls_noncombat", 0));
				SetEncounterActive(0, GetObjectByTag("ls_ro_dining", 0));
				SetEncounterActive(0, GetObjectByTag("ls_va_dining", 0));
				SetEncounterActive(0, GetObjectByTag("ls_va_sith_enc", 0));
				SetEncounterActive(0, GetObjectByTag("ls_va_sith_enc", 1));
				SetEncounterActive(0, GetObjectByTag("ls_va_sith_enc", 2));
				SetEncounterActive(0, GetObjectByTag("ls_vaklu_enc", 0));
				SetEncounterActive(0, GetObjectByTag("ls_vaklu_enc", 1));
				SetEncounterActive(0, GetObjectByTag("ls_vaklu_enc", 2));
				SetEncounterActive(0, GetObjectByTag("ls_vaklu_enc", 3));
				SetEncounterActive(1, GetObjectByTag("ds_droid_encounter", 0));
				SetEncounterActive(1, GetObjectByTag("ds_droid_encounter", 1));
				SetEncounterActive(1, GetObjectByTag("ds_royal_grenade", 0));
				SetEncounterActive(1, GetObjectByTag("ds_royal_troops", 0));
				SetEncounterActive(1, GetObjectByTag("ds_royal_troops", 1));
				SetEncounterActive(1, GetObjectByTag("ds_royal_troops", 2));
				SetEncounterActive(1, GetObjectByTag("ds_royal_troops", 3));
				SetEncounterActive(1, GetObjectByTag("ds_royal_troops", 4));
				SetEncounterActive(1, GetObjectByTag("ds_royal_troops", 5));
				SetEncounterActive(1, GetObjectByTag("ds_sith_chaos", 0));
				SetEncounterActive(1, GetObjectByTag("ds_sith_chaos", 1));
				SetEncounterActive(1, GetObjectByTag("ds_vaklu_enc", 0));
				SetEncounterActive(1, GetObjectByTag("ds_vaklu_enc", 1));
				SetEncounterActive(1, GetObjectByTag("ds_vaklu_enc", 2));
				AssignCommand(GetObjectByTag("royal_corporal", 0), ActionJumpToObject(GetObjectByTag("wp_ds_corp", 0), 1));
				AssignCommand(GetObjectByTag("kadron", 0), ActionJumpToObject(GetObjectByTag("wp_ds_kadron", 0), 1));
				AssignCommand(GetObjectByTag("kavar", 0), ActionJumpToObject(GetObjectByTag("wp_ds_kavar", 0), 1));
				AssignCommand(GetObjectByTag("tobin", 0), ActionJumpToObject(GetObjectByTag("sp_npc_tobin", 0), 1));
				int int13 = 0;
				while ((int13 < 4)) {
					AssignCommand(GetObjectByTag("v_troop", int13), ActionJumpToObject(GetObjectByTag(("sp_vaklu_captain001" + IntToString((int13 + 1))), 0), 1));
					(int13++);
				}
				sub1("va_officer", 0);
				sub1("ds_si_jedi_appr", 1);
				sub1("ds_si_jedi_appr", 2);
				sub1("ds_v_troop", 1);
				sub1("ds_v_troop", 2);
				sub1("ds_v_troop", 3);
				sub1("ds_v_troop", 4);
				DestroyObject(GetObjectByTag("sith_drexl", 0), 0.0, 0, 0.0, 0);
				SetLocalBoolean(oTo_504, 43, 1);
			}
			oVa_officer = GetObjectByTag("va_officer", 0);
			AssignCommand(oVa_officer, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	int int14 = sub2("vaklu", 0);
}
