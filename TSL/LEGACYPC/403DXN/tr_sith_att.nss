struct structtype1 {
	float float1;
	float float3;
};

struct structtype2 {
	location location1;
	float float1;
};

struct structtype3 {
	object object1;
	location location1;
	float float1;
};

void main() {
	struct structtype3 struct3;
	struct3.object1 = GetEnteringObject();
	if ((!GetIsPartyLeader(struct3.object1))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("403DXN_Sith_Attack") == 0)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	struct structtype3 struct3;
	float float2;
	float float3;
	float float4;
	float float5;
	float fFacing;
	object oSp_sith_ass_4038;
	int int4;
	if ((GetTag(OBJECT_SELF) == "tr_sith_att_1")) {
		if ((GetGlobalNumber("403DXN_Sith_Attack") != 1)) {
			return;
		}
		AssignCommand(GetObjectByTag("g_mandalore", 0), ActionStartConversation(GetFirstPC(), "sith_att", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		CreateObject(1, "sith_ass_403", GetLocation(GetObjectByTag("WP_SITH_SPAWN_TRIG1", 0)), 0);
		CreateObject(1, "sith_ass_403", GetLocation(GetObjectByTag("WP_SITH_SPAWN_TRIG2", 0)), 0);
		CreateObject(1, "sith_ass_403", GetLocation(GetObjectByTag("WP_SITH_SPAWN_TRIG3", 0)), 0);
	}
	if ((GetTag(OBJECT_SELF) == "tr_sith_att_2")) {
		AurPostString("Spawn in Wave", 5, 5, 5.0);
		oSp_sith_ass_4038 = GetObjectByTag("sp_sith_ass_4038", 0);
		fFacing = GetFacing(oSp_sith_ass_4038);
		CreateObject(1, "sith_ass_403", GetLocation(oSp_sith_ass_4038), 0);
		int4 = 1;
		while ((int4 <= 5)) {
			struct3 = (GetPositionFromLocation(GetLocation(oSp_sith_ass_4038)) + Vector(0.0, (2.6 * IntToFloat(int4)), 0.0));
			ActionWait(0.2);
			0;
			float4;
		}
	}
}

