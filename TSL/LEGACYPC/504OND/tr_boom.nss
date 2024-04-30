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
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	string string1 = "xterm2";
	if ((GetTag(OBJECT_SELF) == "tr_boom_1")) {
		string1 = "xterm1";
	}
	float float1 = 10.0;
	int int3 = 1;
	object oBostuco;
	object object4 = GetObjectByTag(string1, 0);
	if (GetIsObjectValid(object4)) {
		effect efVisual = EffectVisualEffect(3011, 0);
		effect effect3 = EffectVisualEffect(1021, 0);
		effect efBeam = EffectBeam(2038, object4, 1, 0);
		effect efDamage;
		oBostuco = GetNearestObject(1, object4, 1);
		int int5 = 1;
		int int6 = 40;
		float float2 = 0.3;
		AssignCommand(object4, ActionPlayAnimation(202, 1.0, 0.0));
		DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(object4), 0.0));
		while ((GetIsObjectValid(oBostuco) && (GetDistanceBetween(oBostuco, object4) <= float1))) {
			if (((int3 == 1) || GetIsEnemy(oBostuco, GetFirstPC()))) {
				efDamage = EffectDamage(int6, 128, 0);
				DelayCommand(float2, ApplyEffectToObject(0, efDamage, oBostuco, 0.0));
				DelayCommand(float2, ApplyEffectToObject(1, efBeam, oBostuco, 1.0));
				DelayCommand(float2, ApplyEffectToObject(0, effect3, oBostuco, 1.0));
				float2 = (float2 + 0.17);
			}
			(int5++);
			oBostuco = GetNearestObject(1, object4, int5);
		}
		ApplyEffectToObject(0, EffectVisualEffect(1008, 0), object4, 0.0);
	}
	int int9 = 1;
	int int10 = 0;
	int10 = 0;
	while ((int10 < 3)) {
		if ((GetCurrentHitPoints(GetPartyMemberByIndex(int10)) > 0)) {
			int9 = 0;
		}
		(int10++);
	}
	if ((!GetLocalBoolean(GetObjectByTag("tr_boom_1", 0), 50))) {
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
			oBostuco = GetObjectByTag("va_officer", 0);
			SetLocalBoolean(oBostuco, 54, 1);
			SetLocalBoolean(oBostuco, 40, 1);
			AssignCommand(oBostuco, ClearAllActions());
			AssignCommand(oBostuco, ActionJumpToLocation(sub1(GetFirstPC(), 2.5)));
		}
		else {
			oBostuco = GetObjectByTag("bostuco", 0);
			SetLocalBoolean(oBostuco, 54, 1);
			SetLocalBoolean(oBostuco, 40, 1);
			AssignCommand(oBostuco, ClearAllActions());
			AssignCommand(oBostuco, ActionJumpToLocation(sub1(GetFirstPC(), 2.5)));
		}
		if ((!int9)) {
			DelayCommand(0.5, AssignCommand(oBostuco, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		SetLocalBoolean(GetObjectByTag("tr_boom_1", 0), 50, 1);
	}
}

