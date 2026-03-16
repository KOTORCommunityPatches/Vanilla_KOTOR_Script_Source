struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
void sub1(object objectParam1, object objectParam2);

void sub1(object objectParam1, object objectParam2) {
	if (GetIsObjectValid(objectParam1)) {
		AssignCommand(objectParam1, ClearAllActions());
		AssignCommand(objectParam1, ActionJumpToLocation(GetLocation(objectParam2)));
	}
}

void main() {
	object oInviso_sion = GetObjectByTag("inviso_sion", 0);
	if (GetIsObjectValid(oInviso_sion)) {
		AurPostString("Startng Sion Cut Scene", 5, 15, 10.0);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		sub1(GetPartyMemberByIndex(0), GetObjectByTag("WP_party_0", 0));
		sub1(GetPartyMemberByIndex(1), GetObjectByTag("WP_party_1", 0));
		sub1(GetPartyMemberByIndex(2), GetObjectByTag("WP_party_2", 0));
		object oWP_sion_spawn = GetObjectByTag("WP_sion_spawn", 0);
		if (GetIsObjectValid(oWP_sion_spawn)) {
			object oN_darthsion001 = CreateObject(1, "n_darthsion001", GetLocation(oWP_sion_spawn), 0);
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_sion_facing", 0)));
			;
		}
	}
}

