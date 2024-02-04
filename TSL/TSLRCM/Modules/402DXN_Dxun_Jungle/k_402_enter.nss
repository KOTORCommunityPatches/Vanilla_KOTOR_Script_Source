// Prototypes
void sub1();

void sub1() {
	if ((d100(1) < 10)) {
		CreateObject(1, "hk_random1", Location(Vector(21.34785, (-46.7209), (-1.82093)), 0.0), 0);
		CreateObject(1, "hk_random", Location(Vector(20.17928, (-44.2993), (-2.01388)), 0.0), 0);
		CreateObject(1, "hk_random", Location(Vector(22.98801, (-45.63978), (-1.84283)), 0.0), 0);
	}
	else {
		if ((d100(1) < 10)) {
			CreateObject(1, "hk_random1", Location(Vector((-55.18712), (-0.15176), 1.79467), 0.0), 0);
			CreateObject(1, "hk_random", Location(Vector((-56.99998), 3.4708, 1.73824), 0.0), 0);
			CreateObject(1, "hk_random", Location(Vector((-54.04541), 2.47843, 1.77626), 0.0), 0);
		}
		else {
			return;
		}
	}
}

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	object oTobin;
	object oMandalorian_sentry = GetObjectByTag("mandalorian_sentry", 0);
	if (GetGlobalNumber("403DXN_Kumus_Story")) {
		DestroyObject(GetObjectByTag("kumus", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("p_detonator", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("fake_kumus", 0), 0.0, 0, 0.0, 0);
	}
	if ((GetGlobalBoolean("402DXN_SentryPost") && GetIsObjectValid(oMandalorian_sentry))) {
		AssignCommand(oMandalorian_sentry, ClearAllActions());
		AssignCommand(oMandalorian_sentry, ActionJumpToObject(GetWaypointByTag("WP_SENTRYSTART"), 1));
		SetGlobalBoolean("402DXN_SentryPost", 0);
	}
	if (GetLocalBoolean(GetObjectByTag("To_401", 0), 55)) {
		int int6 = 0;
		while ((int6 <= 12)) {
			oTobin = GetObjectByTag("mandalorian_fr", int6);
			if ((GetStandardFaction(oTobin) == 1)) {
				DestroyObject(oTobin, 0.0, 0, 0.0, 0);
			}
			(int6++);
		}
		oTobin = GetObjectByTag("mand_sentry2", 0);
		if (GetIsObjectValid(oTobin)) {
			DestroyObject(GetObjectByTag("mandalorian_sentry", 0), 0.0, 0, 0.0, 0);
		}
		SetLocalBoolean(GetObjectByTag("To_401", 0), 55, 0);
	}
	if ((!GetLocalBoolean(GetObjectByTag("To_401", 0), 56))) {
		if (((GetGlobalNumber("502OND_End_First") == 2) || (GetGlobalNumber("403DXN_Second_Visit") == 1))) {
			DestroyObject(GetObjectByTag("zakkeg", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("kumus", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("fake_kumus", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("kelborn", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("p_detonator_2", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("p_detonator", 0), 0.0, 0, 0.0, 0);
			SetLocalBoolean(GetObjectByTag("To_401", 0), 56, 0);
			SetLocalBoolean(GetObjectByTag("To_401", 0), 45, 1);
		}
	}
	if (((!GetLocalBoolean(GetObjectByTag("To_401", 0), 45)) && (GetGlobalNumber("402DXN_Davrel_Fate") == 1))) {
		CreateObject(1, "npc_davrel", GetLocation(GetObjectByTag("mn_mandy_sentry", 0)), 0);
		SetLocalBoolean(GetObjectByTag("To_401", 0), 45, 1);
	}
	object oTo_401 = GetObjectByTag("To_401", 0);
	if (((!GetLocalBoolean(oTo_401, 46)) && GetIsObjectValid(GetFirstPC()))) {
		SetLocalBoolean(oTo_401, 46, 1);
		oTobin = GetObjectByTag("tobin", 0);
		SetForceAlwaysUpdate(oTobin, 1);
		SetForceAlwaysUpdate(GetObjectByTag("cs_capt", 0), 1);
		AssignCommand(oTobin, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if ((((!GetLocalBoolean(oTo_401, 47)) && GetIsObjectValid(GetObjectByTag("mand_sentry2", 0))) && GetIsObjectValid(GetFirstPC()))) {
		oTobin = GetObjectByTag("mand_sentry2", 0);
		object oSp_n_mandalorian_fr2 = GetObjectByTag("sp_n_mandalorian_fr2", 0);
		AssignCommand(oTobin, ActionJumpToObject(oSp_n_mandalorian_fr2, 1));
		int int19 = 0;
		while ((int19 < 10)) {
			DestroyObject(GetObjectByTag("mandalorian_fr", int19), 0.0, 0, 0.0, 0);
			(int19++);
		}
		SetLocalBoolean(oTo_401, 47, 1);
	}
	if ((GetObjectByTag("hk_random1", 0) == OBJECT_INVALID)) {
		sub1();
	}
}