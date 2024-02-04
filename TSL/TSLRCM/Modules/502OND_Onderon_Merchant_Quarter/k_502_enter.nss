// Prototypes
object sub1(string stringParam1, int intParam2);

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
	int int1;
	object oVaklu;
	object oFrom_503OND;
	object oTo_501 = GetObjectByTag("To_501", 0);
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (((GetGlobalNumber("503OND_Cap_Murder") == 7) && (!GetLocalBoolean(GetWaypointByTag("From_Alibi1"), 40)))) {
		CreateObject(1, "npc_nikko", GetLocation(GetWaypointByTag("wp_nikko")), 0);
		SetLocalBoolean(GetWaypointByTag("From_Alibi1"), 40, 1);
	}
	else {
		if (GetIsObjectValid(GetObjectByTag("npc_nikko", 0))) {
			DestroyObject(GetObjectByTag("npc_nikko", 0), 0.0, 0, 0.0, 0);
		}
	}
	object oG_anda = GetObjectByTag("g_anda", 0);
	if ((GetIsObjectValid(oG_anda) && (GetGlobalNumber("503OND_Gelesi_Gone") == 1))) {
		SetLocalBoolean(oG_anda, 44, 1);
	}
	if ((GetIsObjectValid(oG_anda) && (GetGlobalNumber("503OND_Gelesi_Gone") == 2))) {
		SetLocalBoolean(oG_anda, 45, 1);
	}
	if (GetGlobalNumber("512OND_Riiken_Patrol")) {
		DestroyObject(GetObjectByTag("g_riiken", 0), 0.0, 0, 0.0, 0);
	}
	if (((GetGlobalNumber("502OND_End_First") == 2) && (!GetLocalBoolean(GetObjectByTag("To_501", 0), 50)))) {
		SetLocalBoolean(GetObjectByTag("To_501", 0), 50, 1);
		oFrom_503OND = GetObjectByTag("From_503OND", 0);
		int1 = 1;
		while ((int1 <= 4)) {
			sub1("vaklu_common", int1);
			(int1++);
		}
		DestroyObject(GetObjectByTag("mp_gsoldier", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("mp_psoldier", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("g_anda", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("ponlar", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("tolas", 0), 0.0, 0, 0.0, 0);
		int1 = 0;
		while ((int1 <= 4)) {
			DestroyObject(GetObjectByTag("mp_crowd", int1), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("mp_crowd_vaklu", int1), 0.0, 0, 0.0, 0);
			(int1++);
		}
	}
	if (((!GetLocalBoolean(oTo_501, 51)) && (GetGlobalNumber("512OND_Visited") == 1))) {
		sub1("vaklu", 0);
		sub1("tobin", 0);
		SetLocalBoolean(oTo_501, 51, 1);
		oVaklu = GetObjectByTag("vaklu", 0);
		AssignCommand(oVaklu, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}