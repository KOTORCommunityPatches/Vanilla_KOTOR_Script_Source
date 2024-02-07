struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
location sub2(object objectParam1, float floatParam2);
object sub1(string stringParam1, int intParam2);

location sub2(object objectParam1, float floatParam2) {
	float float1 = 0.0;
	float float2 = 0.0;
	float float3 = (GetFacing(objectParam1) + 0.0);
	vector struct3;
	struct3.x = (GetFacing(objectParam1) + 90.0);
	vector struct3;
	float float9;
	float float10;
	if ((float3 > 180.0)) {
		struct3.y = (float3 - 360.0);
	}
	else {
		struct3.y = float3;
	}
	struct3.y = (struct3.y / 90);
	if ((struct3.y < (-1.0))) {
		struct3.y = (-(struct3.y + 2.0));
	}
	if ((struct3.y > 1.0)) {
		struct3.y = (-(struct3.y - 2.0));
	}
	float2 = (struct3.y * (-floatParam2));
	if ((struct3.x > 360.0)) {
		struct3.x = (struct3.x - 360.0);
	}
	if ((struct3.x > 180.0)) {
		struct3.y = (struct3.x - 360.0);
	}
	else {
		struct3.y = struct3.x;
	}
	struct3.y = (struct3.y / 90);
	if ((struct3.y < (-1.0))) {
		struct3.y = (-(struct3.y + 2.0));
	}
	if ((struct3.y > 1.0)) {
		struct3.y = (-(struct3.y - 2.0));
	}
	float1 = (struct3.y * (-floatParam2));
	struct3 = (GetPositionFromLocation(GetLocation(objectParam1)) + Vector(float1, float2, 0.0));
	float1;
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
	object oTo_502 = GetObjectByTag("To_502", 0);
	object oVa_officer;
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if ((((!GetLocalBoolean(oTo_502, 51)) && (GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) && GetIsObjectValid(oTo_502))) {
		SetLocalBoolean(oTo_502, 51, 1);
		sub1("ds_turret", 1);
		sub1("ds_turret", 4);
		sub1("ds_turret", 5);
		sub1("ds_turret", 7);
		sub1("ds_turret", 8);
		sub1("ds_turret", 10);
		sub1("ds_turret", 11);
		sub1("va_tcpt", 0);
		sub1("ds_roy_grenade", 1);
		sub1("ds_roy_grenade", 2);
		sub1("ds_ro_sold_gun", 2);
		sub1("ds_ro_sold_gun", 3);
		sub1("ds_ro_sold_sarge", 0);
		sub1("ds_ro_sold", 2);
		sub1("ds_ro_sold", 3);
		sub1("ds_ro_sold", 4);
		sub1("ds_ro_sold_sp1", 0);
		sub1("ds_ro_sold_sp2", 0);
		sub1("ds_ro_sold_sp3", 0);
		sub1("ds_ro_sold_cow", 1);
		sub1("ds_ro_sold_cow", 2);
		sub1("ds_ro_sold_cow", 3);
		sub1("va_officer", 0);
		sub1("ds_va_troop", 1);
		sub1("ds_va_troop", 2);
		sub1("ds_va_troop", 3);
		sub1("ds_va_troop", 4);
	}
	if ((((!GetLocalBoolean(oTo_502, 52)) && (GetGlobalNumber("500OND_DarkSide_Iziz") != 1)) && GetIsObjectValid(oTo_502))) {
		SetLocalBoolean(oTo_502, 52, 1);
		sub1("npc_bostuco", 0);
		sub1("n_repsold002", 0);
		sub1("n_sithappren001", 1);
		sub1("g_darkjedi006", 0);
		sub1("sith_soldier", 1);
		sub1("sith_soldier", 3);
		sub1("vaklu_capt", 0);
		object object41 = sub1("n_vgunner", 1);
		sub1("n_vgunner", 2);
		sub1("n_vgunner", 3);
		sub1("n_vgunner", 5);
		sub1("n_vgunner", 6);
		sub1("n_vgunner", 9);
		sub1("n_vgunner", 10);
		sub1("n_vgunner", 12);
		sub1("n_vgunner001", 1);
		sub1("n_vgunner001", 2);
		sub1("vaklu_lt", 0);
		sub1("vaklu_sergeant", 0);
		sub1("vaklu_sergean001", 0);
		object object55 = sub1("n_vsoldier", 1);
		object object57 = sub1("n_vsoldier", 2);
		object object59 = sub1("n_vsoldier", 3);
		sub1("n_vsoldier", 5);
		sub1("n_vsoldier", 6);
		sub1("n_vsoldier", 7);
		sub1("n_vsoldier", 8);
		sub1("n_vsoldier", 11);
		sub1("n_vsoldier", 12);
		sub1("n_vsoldier", 14);
		sub1("n_vsoldier", 16);
		sub1("n_vsoldier", 18);
		sub1("c_boma1", 1);
		sub1("c_boma1", 3);
		sub1("c_boma1", 4);
	}
	if (((!GetLocalBoolean(oTo_502, 53)) && (GetGlobalNumber("500OND_DarkSide_Iziz") == 1))) {
		if (GetIsObjectValid(GetFirstPC())) {
			SetLocalBoolean(oTo_502, 53, 1);
			oVa_officer = GetObjectByTag("va_officer", 0);
			SetMinOneHP(oVa_officer, 1);
			SetLocalBoolean(oVa_officer, 50, 1);
			AssignCommand(oVa_officer, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	else {
		if (((!GetLocalBoolean(oTo_502, 60)) && (GetGlobalNumber("500OND_DarkSide_Iziz") == 0))) {
			SetLocalBoolean(oTo_502, 60, 1);
			AurPostString("Starting Conversation with bostuco", 5, 5, 5.0);
			object oBostuco = GetObjectByTag("bostuco", 0);
			SetLocalBoolean(oBostuco, 50, 1);
			SetLocalBoolean(oBostuco, 40, 1);
			SetMinOneHP(oBostuco, 1);
			DestroyObject(GetObjectByTag("g_t_sonic02", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap002", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap002", 1), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap002", 2), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap005", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap005", 1), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap005", 2), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap008", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("g_t_trap008", 1), 0.0, 0, 0.0, 0);
			SetEncounterActive(0, GetObjectByTag("ds_barrack_guard", 0));
			SetEncounterActive(0, GetObjectByTag("ds_barrack_guard", 1));
			SetEncounterActive(0, GetObjectByTag("ds_ramp", 0));
			SetEncounterActive(0, GetObjectByTag("ds_ramp", 1));
			SetEncounterActive(1, GetObjectByTag("ls_cowards", 0));
			DestroyObject(GetObjectByTag("ro_plat", 1), 0.0, 0, 0.0, 0);
			AssignCommand(oBostuco, ClearAllActions());
			AssignCommand(oBostuco, ActionJumpToLocation(sub2(GetFirstPC(), 2.5)));
			AssignCommand(oBostuco, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

