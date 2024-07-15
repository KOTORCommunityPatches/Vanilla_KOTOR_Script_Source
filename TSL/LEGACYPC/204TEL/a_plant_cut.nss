struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
void sub1();

void sub1() {
	string string1;
	object oNPC;
	int int1 = 0;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		string1 = ("WP_party_" + IntToString(int1));
		AurPostString(string1, 5, (15 + int1), 10.0);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag(string1, 0), 1));
		}
		(int1++);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			sub1();
			SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
			object oIth_plant = GetObjectByTag("ith_plant", 0);
			if (GetIsObjectValid(oIth_plant)) {
				object oWP_ith_comp = GetObjectByTag("WP_ith_comp", 0);
				if (GetIsObjectValid(oWP_ith_comp)) {
					AssignCommand(oIth_plant, ClearAllActions());
					AssignCommand(oIth_plant, ActionForceMoveToLocation(GetLocation(oWP_ith_comp), 0, 30.0));
					vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_ithfacing", 0)));
					;
				}
			}
		case 2:
		default:
	}
}

