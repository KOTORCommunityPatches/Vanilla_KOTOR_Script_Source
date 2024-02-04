struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	AurPostString("Testing!", 5, 4, 2.0);
	object oNPC = GetPartyMemberByIndex(0);
	DelayCommand(0.1, AssignCommand(oNPC, ClearAllActions()));
	DelayCommand(0.2, AssignCommand(oNPC, ActionJumpToObject(objectParam1, 1)));
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
	float2 = (struct3.y * (-2.5));
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
	float1 = (struct3.y * (-2.5));
	oNPC = GetPartyMemberByIndex(1);
	if ((GetIsObjectValid(oNPC) && (GetCurrentHitPoints(oNPC) > 1))) {
		SetCommandable(1, oNPC);
		struct3 = (GetPositionFromLocation(GetLocation(objectParam1)) + Vector(float1, float2, 0.0));
												ClearAllActions();
;
;
	}
}

void main() {
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	sub1(GetFirstPC());
	int int3;
	object oPC = GetFirstPC();
	object oFake_mira = GetObjectByTag("fake_mira", 0);
	if ((GetTag(OBJECT_SELF) == "tr_mira_talk_1")) {
		int3 = 1;
	}
	if ((GetTag(OBJECT_SELF) == "tr_mira_talk_2")) {
		int3 = 2;
	}
	if ((GetTag(OBJECT_SELF) == "tr_mira_talk_3")) {
		int3 = 3;
	}
	if ((GetTag(OBJECT_SELF) == "tr_mira_talk_4")) {
		int3 = 4;
	}
	switch (int3) {
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			if ((!GetLocalBoolean(GetObjectByTag("tr_mira_talk_4", 0), 45))) {
				SetLocalBoolean(GetObjectByTag("tr_mira_talk_4", 0), 45, 1);
				DelayCommand(0.1, AssignCommand(oFake_mira, ActionStartConversation(GetFirstPC(), "cnpc_dse", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				SetLocalBoolean(GetObjectByTag("tr_mira_talk_4", 0), 50, 1);
				SetLocalBoolean(GetObjectByTag("tr_mira_talk_4", 1), 50, 1);
			}
			break;
	}
}

