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
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oVa_officer = GetObjectByTag("va_officer", 0);
	SetLocalBoolean(oVa_officer, 53, 1);
	SetLocalBoolean(oVa_officer, 40, 1);
	AssignCommand(oVa_officer, ClearAllActions());
	AssignCommand(oVa_officer, ActionJumpToLocation(sub1(GetFirstPC(), 2.5)));
	DelayCommand(0.1, AssignCommand(oVa_officer, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

