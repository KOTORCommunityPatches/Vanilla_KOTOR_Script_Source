struct structtype1 {
	float float1;
	float float3;
};

// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub3();
void sub2(string stringParam1);
void sub1(string stringParam1);

void sub3() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(0), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

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
	sub3();
	object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
	object oNpc_azkul = GetObjectByTag("npc_azkul", 0);
	AssignCommand(oNpc_zherron, ClearAllActions());
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object9 = GetPartyMemberByIndex(2);
	AssignCommand(oPC, ClearAllActions());
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC))), oPC, 0.0);
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(oNPC) - GetCurrentHitPoints(oNPC))), oNPC, 0.0);
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(object9) - GetCurrentHitPoints(object9))), object9, 0.0);
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
	}
	if (GetIsObjectValid(object9)) {
		AssignCommand(object9, ClearAllActions());
	}
	if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
		AssignCommand(oNpc_zherron, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		object oG_merc_west = GetObjectByTag("g_merc_west", 0);
		AssignCommand(oG_merc_west, ClearAllActions());
		AssignCommand(oG_merc_west, ActionJumpToLocation(Location(Vector(293.58456, 103.18233, 7.03251), 1.67531)));
		AssignCommand(oNpc_azkul, ClearAllActions());
		AssignCommand(oNpc_azkul, ActionJumpToLocation(Location(Vector(293.58456, 106.18233, 7.03251), 1.67531)));
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		}
		if (GetIsObjectValid(object9)) {
			AssignCommand(object9, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		}
	}
	else {
		AssignCommand(oNpc_zherron, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
		AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		object object19 = GetObjectByTag("g_merc_west", 0);
		AssignCommand(object19, ClearAllActions());
		AssignCommand(object19, ActionJumpToLocation(Location(Vector(410.0, 110.68233, 7.03251), 1.67531)));
		AssignCommand(oNpc_azkul, ClearAllActions());
		AssignCommand(oNpc_azkul, ActionJumpToLocation(Location(Vector(410.0, 113.68233, 7.03251), 1.67531)));
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		}
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(object9, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
		}
	}
	if ((GetGlobalNumber("601DAN_Side") == 1)) {
		DelayCommand(0.5, AssignCommand(oNpc_zherron, ActionStartConversation(oPC, "zherron", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if ((GetGlobalNumber("601DAN_Side") == 2)) {
		DelayCommand(0.5, ActionStartConversation(oNpc_azkul, "azkul", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	}
}

