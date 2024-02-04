// Prototypes
void sub2();
void sub1();

void sub2() {
	AurPostString("Spawning Dudes...", 5, 5, 5.0);
	object oNpc_kelborn = GetObjectByTag("atton", 0);
	object oWp_end_kelborn = GetObjectByTag("wp_end_atton", 0);
	if (GetIsObjectValid(oNpc_kelborn)) {
		AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
	}
	else {
		SpawnAvailableNPC(0, GetLocation(oWp_end_kelborn));
	}
	if ((GetNPCSelectability(7) == 1)) {
		AurPostString("Mira is in party", 5, 5, 5.0);
		oNpc_kelborn = GetObjectByTag("mira", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_mira", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(7, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(4) == 1)) {
		oNpc_kelborn = GetObjectByTag("handmaiden", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_hand", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(4, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(11) == 1)) {
		oNpc_kelborn = GetObjectByTag("disciple", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_hand", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(11, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(1) == 1)) {
		oNpc_kelborn = GetObjectByTag("BaoDur", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_bao", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(1, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(9) == 1)) {
		oNpc_kelborn = GetObjectByTag("VisasMarr", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_visas", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(9, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(5) == 1)) {
		oNpc_kelborn = GetObjectByTag("HK47", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_hk", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(5, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(8) == 1)) {
		oNpc_kelborn = GetObjectByTag("T3M4", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_t3", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(8, GetLocation(oWp_end_kelborn));
		}
	}
	if ((GetNPCSelectability(10) == 1)) {
		oNpc_kelborn = GetObjectByTag("Hanharr", 0);
		oWp_end_kelborn = GetObjectByTag("wp_end_mira", 0);
		if (GetIsObjectValid(oNpc_kelborn)) {
			AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
		}
		else {
			SpawnAvailableNPC(10, GetLocation(oWp_end_kelborn));
		}
	}
	oNpc_kelborn = GetObjectByTag("mand", 0);
	oWp_end_kelborn = GetObjectByTag("wp_end_mand", 0);
	if (GetIsObjectValid(oNpc_kelborn)) {
		AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
	}
	else {
		SpawnAvailableNPC(2, GetLocation(oWp_end_kelborn));
	}
	oNpc_kelborn = GetObjectByTag("kreia", 0);
	oWp_end_kelborn = GetObjectByTag("wp_end_kreia", 0);
	if (GetIsObjectValid(oNpc_kelborn)) {
		AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
	}
	else {
		SpawnAvailableNPC(6, GetLocation(oWp_end_kelborn));
	}
	oWp_end_kelborn = GetObjectByTag("wp_end_pc", 0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_end_kelborn, 1));
	oNpc_kelborn = GetObjectByTag("npc_kelborn", 0);
	oWp_end_kelborn = GetObjectByTag("wp_end_kelborn", 0);
	if (GetIsObjectValid(oNpc_kelborn)) {
		AssignCommand(oNpc_kelborn, ClearAllActions());
		AssignCommand(oNpc_kelborn, ActionJumpToObject(oWp_end_kelborn, 1));
	}
	else {
		oNpc_kelborn = CreateObject(1, "npc_kelborn", GetLocation(oWp_end_kelborn), 0);
	}
	DelayCommand(1.3, AssignCommand(oNpc_kelborn, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	SetLocalBoolean(GetObjectByTag("From_402DXN", 0), 54, 1);
	SetGlobalNumber("403DXN_Second_Visit", 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	AssignCommand(GetFirstPC(), DelayCommand(1.3, SetGlobalFadeIn(0.2, 1.5, 0.0, 0.0, 0.0)));
	DelayCommand(0.3, sub1());
	AssignCommand(GetFirstPC(), DelayCommand(0.90000004, sub2()));
}