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
	int nParam1 = GetScriptParameter(1);
	object oNw_door;
	switch (nParam1) {
		case 1:
			oNw_door = GetObjectByTag("sw_door", 0);
			SetLocalBoolean(GetObjectByTag("tr_mira_talk_1", 0), 50, 1);
			SetLocalBoolean(OBJECT_SELF, 40, 1);
			if (GetLocalBoolean(GetObjectByTag("anc_terminal_se", 0), 40)) {
				AurPostString("Second Door Opened", 5, 5, 5.0);
				oNw_door = GetObjectByTag("se_door", 0);
				SetLocalBoolean(GetObjectByTag("tr_mira_talk_2", 0), 50, 1);
				SetLocalBoolean(OBJECT_SELF, 41, 1);
			}
			break;
		case 2:
			oNw_door = GetObjectByTag("sw_door", 0);
			SetLocalBoolean(GetObjectByTag("tr_mira_talk_1", 0), 50, 1);
			SetLocalBoolean(OBJECT_SELF, 40, 1);
			if (GetLocalBoolean(GetObjectByTag("anc_terminal_sw", 0), 40)) {
				AurPostString("Second Door Opened", 5, 5, 5.0);
				oNw_door = GetObjectByTag("se_door", 0);
				SetLocalBoolean(GetObjectByTag("tr_mira_talk_2", 0), 50, 1);
				SetLocalBoolean(OBJECT_SELF, 41, 1);
			}
			break;
		case 3:
			oNw_door = GetObjectByTag("nw_door", 0);
			break;
	}
	SetLocked(oNw_door, 0);
	DelayCommand(0.5, AssignCommand(oNw_door, ActionOpenDoor(oNw_door)));
	sub1(GetFirstPC());
}

