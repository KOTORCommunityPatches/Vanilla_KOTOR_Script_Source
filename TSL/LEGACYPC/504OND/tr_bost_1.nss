struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
location sub1(object objectParam1, float floatParam2);

location sub1(object objectParam1, float floatParam2) {
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

void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
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
	AssignCommand(oBostuco, ActionJumpToLocation(sub1(GetFirstPC(), 2.5)));
	DelayCommand(0.1, AssignCommand(oBostuco, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

