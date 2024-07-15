struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
object sub2(string stringParam1, int intParam2);
location sub1(object objectParam1, float floatParam2);

object sub2(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

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
	SetLocalBoolean(oBostuco, 51, 1);
	SetLocalBoolean(oBostuco, 40, 1);
	AssignCommand(oBostuco, ClearAllActions());
	AssignCommand(oBostuco, ActionJumpToLocation(sub1(GetFirstPC(), 2.5)));
	object object6 = sub2("roy_sold_pc", 1);
	SetLocalBoolean(object6, 40, 0);
	AssignCommand(object6, ActionMoveToObject(GetFirstPC(), 1, 1.0));
	object6 = sub2("roy_sold_pc", 2);
	SetLocalBoolean(object6, 40, 0);
	AssignCommand(object6, ActionMoveToObject(GetFirstPC(), 1, 1.0));
	DelayCommand(0.1, AssignCommand(oBostuco, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

