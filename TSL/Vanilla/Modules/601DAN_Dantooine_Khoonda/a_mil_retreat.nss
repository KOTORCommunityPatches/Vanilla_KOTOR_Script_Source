// Prototypes
void sub2(string stringParam1);
void sub1(string stringParam1);

void sub2(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 5);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void sub1(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		CancelCombat(object1);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	sub1("khoonda_turret1");
	sub2("khoonda_turret1");
	sub1("khoonda_turret2");
	sub2("khoonda_turret2");
	sub1("khoonda_turret3");
	sub2("khoonda_turret3");
	sub1("g_merc_east");
	sub2("g_merc_east");
	sub1("g_merc_west");
	sub2("g_merc_west");
	sub1("g_militia");
	sub2("g_militia");
	sub1("g_militia2");
	sub2("g_militia2");
	sub1("g_militia3");
	sub2("g_militia3");
	sub1("g_militia4");
	sub2("g_militia4");
	sub1("npc_zherron");
	object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
	AssignCommand(oNpc_zherron, ClearAllActions());
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	object object5 = GetNextPC();
	object object7 = GetNextPC();
	AssignCommand(oPC, ClearAllActions());
	if (GetIsObjectValid(object5)) {
		AssignCommand(object5, ClearAllActions());
	}
	if (GetIsObjectValid(object7)) {
		AssignCommand(object7, ClearAllActions());
	}
	if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
		AssignCommand(oNpc_zherron, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		if (GetIsObjectValid(object5)) {
			AssignCommand(object5, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		}
		if (GetIsObjectValid(object7)) {
			AssignCommand(object7, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		}
	}
	else {
		AssignCommand(oNpc_zherron, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		if (GetIsObjectValid(object5)) {
			AssignCommand(object5, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		}
		if (GetIsObjectValid(object5)) {
			AssignCommand(object7, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		}
	}
	DelayCommand(0.5, AssignCommand(oNpc_zherron, ActionStartConversation(oPC, "zherron", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
