// Prototypes
void sub1(int intParam1);

void sub1(int intParam1) {
	int int1 = 3;
	int int2;
	string string1 = "WP_guard_spawn_";
	int2 = 1;
	while ((int2 <= int1)) {
		{
			string string2 = (string1 + IntToString(int2));
			object object1 = GetObjectByTag(string2, 0);
			object oG_gamlux = CreateObject(1, "g_gamlux", GetLocation(object1), 0);
			if ((intParam1 == 2)) {
				ChangeToStandardFaction(oG_gamlux, 1);
			}
		}
		(int2++);
	}
	object oWP_guard_spawn_boss2 = GetObjectByTag("WP_guard_spawn_boss", 0);
	object oG_gamluxb001 = CreateObject(1, "g_gamluxb", GetLocation(oWP_guard_spawn_boss2), 0);
	if ((intParam1 == 2)) {
		ChangeToStandardFaction(oG_gamluxb001, 1);
	}
	object oWP_guard_spawn_5 = GetObjectByTag("WP_guard_spawn_4", 0);
	object object11 = CreateObject(1, "g_gamlux", GetLocation(oWP_guard_spawn_5), 0);
	oWP_guard_spawn_5 = GetObjectByTag("WP_guard_spawn_5", 0);
	object11 = CreateObject(1, "g_gamlux", GetLocation(oWP_guard_spawn_5), 0);
	oWP_guard_spawn_boss2 = GetObjectByTag("WP_guard_spawn_boss2", 0);
	oG_gamluxb001 = CreateObject(1, "g_gamluxb001", GetLocation(oWP_guard_spawn_boss2), 0);
}

void main() {
	object oDoor_203exin = GetObjectByTag("door_203exin", 0);
	if (GetIsObjectValid(oDoor_203exin)) {
		SetLocked(GetObjectByTag("door_203exin", 0), 0);
		DelayCommand(0.5, AssignCommand(oDoor_203exin, ActionOpenDoor(oDoor_203exin)));
	}
	int nParam1 = GetScriptParameter(1);
	sub1(nParam1);
	if ((nParam1 == 2)) {
		object oTr_gam_destroy = GetObjectByTag("tr_gam_destroy", 0);
		if (GetIsObjectValid(oTr_gam_destroy)) {
			SetLocalBoolean(oTr_gam_destroy, 29, 1);
		}
	}
}

