// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	int int1 = 1;
	while ((int1 < 4)) {
		{
			string string1 = ("WP_militia1_0" + IntToString(int1));
			object object1 = GetObjectByTag(string1, 0);
			object oG_militia006 = CreateObject(1, "g_militia006", GetLocation(object1), 0);
			if ((!GetIsObjectValid(oG_militia006))) {
				AurPostString("Invalid Melee Militia", 13, 15, 10.0);
			}
		}
		(int1++);
	}
}

void sub2() {
	int int1 = 1;
	while ((int1 < 4)) {
		{
			string string1 = ("WP_militia2_0" + IntToString(int1));
			object object1 = GetObjectByTag(string1, 0);
			object oG_militia007 = CreateObject(1, "g_militia007", GetLocation(object1), 0);
			if ((!GetIsObjectValid(oG_militia007))) {
				AurPostString("Invalid Gun Militia", 13, 16, 10.0);
			}
		}
		(int1++);
	}
}

void sub1() {
	string string1 = "WP_zherron";
	object object1 = GetObjectByTag(string1, 0);
	object oG_militia004 = CreateObject(1, "g_militia004", GetLocation(object1), 0);
	if ((!GetIsObjectValid(oG_militia004))) {
		AurPostString("Invalid Zherron", 13, 17, 10.0);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			ExecuteScript("a_clear_turrets", GetFirstPC(), 0xFFFFFFFF);
			sub1();
			sub2();
			sub3();
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			break;
		case 2:
			break;
		case 3:
			{
				object oWP_merc2_01 = GetObjectByTag("WP_merc2_01", 0);
				object oWP_merc2_02 = GetObjectByTag("WP_merc2_02", 0);
				object oWP_merc2_03 = GetObjectByTag("WP_merc2_03", 0);
				object oWP_merc2_04 = GetObjectByTag("WP_merc2_04", 0);
				object oWP_merc2_05 = GetObjectByTag("WP_merc2_05", 0);
				object oWP_merc2_06 = GetObjectByTag("WP_merc2_06", 0);
				object oWP_merc2_07 = GetObjectByTag("WP_merc2_07", 0);
				CreateObject(1, "g_merc_az003", GetLocation(oWP_merc2_01), 0);
				CreateObject(1, "g_merc_az004", GetLocation(oWP_merc2_02), 0);
				CreateObject(1, "g_merc_az005", GetLocation(oWP_merc2_03), 0);
				CreateObject(1, "g_merc_az006", GetLocation(oWP_merc2_04), 0);
				CreateObject(1, "mercgun001", GetLocation(oWP_merc2_05), 0);
				CreateObject(1, "mercgun002", GetLocation(oWP_merc2_06), 0);
				CreateObject(1, "mercgun003", GetLocation(oWP_merc2_07), 0);
				object oG_merc_melee1 = GetObjectByTag("g_merc_melee1", 0);
				object oG_merc_melee2 = GetObjectByTag("g_merc_melee2", 0);
				object oG_merc_melee3 = GetObjectByTag("g_merc_melee3", 0);
				object oG_merc_melee4 = GetObjectByTag("g_merc_melee4", 0);
				object oG_merc_gun1 = GetObjectByTag("g_merc_gun1", 0);
				object oG_merc_gun2 = GetObjectByTag("g_merc_gun2", 0);
				object oG_merc_gun3 = GetObjectByTag("g_merc_gun3", 0);
				object oWP_merc3_01 = GetObjectByTag("WP_merc3_01", 0);
				object oWP_merc3_02 = GetObjectByTag("WP_merc3_02", 0);
				object oWP_merc3_03 = GetObjectByTag("WP_merc3_03", 0);
				object oWP_merc3_04 = GetObjectByTag("WP_merc3_04", 0);
				object oWP_merc3_05 = GetObjectByTag("WP_merc3_05", 0);
				object oWP_merc3_06 = GetObjectByTag("WP_merc3_06", 0);
				object oWP_merc3_07 = GetObjectByTag("WP_merc3_07", 0);
				ChangeToStandardFaction(oG_merc_melee1, 12);
				AssignCommand(oG_merc_melee1, ClearAllActions());
				AssignCommand(oG_merc_melee1, ActionMoveToLocation(GetLocation(oWP_merc3_01), 1));
				ChangeToStandardFaction(oG_merc_melee2, 12);
				AssignCommand(oG_merc_melee2, ClearAllActions());
				AssignCommand(oG_merc_melee2, ActionMoveToLocation(GetLocation(oWP_merc3_02), 1));
				ChangeToStandardFaction(oG_merc_melee3, 12);
				AssignCommand(oG_merc_melee3, ClearAllActions());
				AssignCommand(oG_merc_melee3, ActionMoveToLocation(GetLocation(oWP_merc3_03), 1));
				ChangeToStandardFaction(oG_merc_melee4, 12);
				AssignCommand(oG_merc_melee4, ClearAllActions());
				AssignCommand(oG_merc_melee4, ActionMoveToLocation(GetLocation(oWP_merc3_04), 1));
				ChangeToStandardFaction(oG_merc_gun1, 12);
				AssignCommand(oG_merc_gun1, ClearAllActions());
				AssignCommand(oG_merc_gun1, ActionMoveToLocation(GetLocation(oWP_merc3_05), 1));
				ChangeToStandardFaction(oG_merc_gun2, 12);
				AssignCommand(oG_merc_gun2, ClearAllActions());
				AssignCommand(oG_merc_gun2, ActionMoveToLocation(GetLocation(oWP_merc3_06), 1));
				ChangeToStandardFaction(oG_merc_gun3, 12);
				AssignCommand(oG_merc_gun3, ClearAllActions());
				AssignCommand(oG_merc_gun3, ActionMoveToLocation(GetLocation(oWP_merc3_07), 1));
				DelayCommand(10.0, SetDialogPlaceableCamera(6));
				DelayCommand(15.0, SetDialogPlaceableCamera(9));
			}
			break;
		case 4:
			{
				object object51 = GetObjectByTag("WP_merc2_01", 0);
				object object53 = GetObjectByTag("WP_merc2_02", 0);
				object object55 = GetObjectByTag("WP_merc2_03", 0);
				object object57 = GetObjectByTag("WP_merc2_04", 0);
				object object59 = GetObjectByTag("WP_merc2_05", 0);
				object object61 = GetObjectByTag("WP_merc2_06", 0);
				object object63 = GetObjectByTag("WP_merc2_07", 0);
				CreateObject(1, "g_merc_az007", GetLocation(object51), 0);
				CreateObject(1, "g_merc_az008", GetLocation(object53), 0);
				CreateObject(1, "g_merc_az009", GetLocation(object55), 0);
				CreateObject(1, "mercgun004", GetLocation(object59), 0);
				CreateObject(1, "mercgun005", GetLocation(object61), 0);
				CreateObject(1, "mercgun006", GetLocation(object63), 0);
				object oG_merc_melee5 = GetObjectByTag("g_merc_melee5", 0);
				object oG_merc_melee6 = GetObjectByTag("g_merc_melee6", 0);
				object oG_merc_melee7 = GetObjectByTag("g_merc_melee7", 0);
				object oG_merc_gun4 = GetObjectByTag("g_merc_gun4", 0);
				object oG_merc_gun5 = GetObjectByTag("g_merc_gun5", 0);
				object oG_merc_gun6 = GetObjectByTag("g_merc_gun6", 0);
				object object83 = GetObjectByTag("WP_merc3_01", 0);
				object object85 = GetObjectByTag("WP_merc3_02", 0);
				object object87 = GetObjectByTag("WP_merc3_03", 0);
				object object89 = GetObjectByTag("WP_merc3_04", 0);
				object object91 = GetObjectByTag("WP_merc3_05", 0);
				object object93 = GetObjectByTag("WP_merc3_06", 0);
				object object95 = GetObjectByTag("WP_merc3_07", 0);
				ChangeToStandardFaction(oG_merc_melee5, 12);
				AssignCommand(oG_merc_melee5, ClearAllActions());
				AssignCommand(oG_merc_melee5, ActionMoveToLocation(GetLocation(object83), 1));
				ChangeToStandardFaction(oG_merc_melee6, 12);
				AssignCommand(oG_merc_melee6, ClearAllActions());
				AssignCommand(oG_merc_melee6, ActionMoveToLocation(GetLocation(object85), 1));
				ChangeToStandardFaction(oG_merc_melee7, 12);
				AssignCommand(oG_merc_melee7, ClearAllActions());
				AssignCommand(oG_merc_melee7, ActionMoveToLocation(GetLocation(object87), 1));
				ChangeToStandardFaction(oG_merc_gun4, 12);
				AssignCommand(oG_merc_gun4, ClearAllActions());
				AssignCommand(oG_merc_gun4, ActionMoveToLocation(GetLocation(object91), 1));
				ChangeToStandardFaction(oG_merc_gun5, 12);
				AssignCommand(oG_merc_gun5, ClearAllActions());
				AssignCommand(oG_merc_gun5, ActionMoveToLocation(GetLocation(object93), 1));
				ChangeToStandardFaction(oG_merc_gun6, 12);
				AssignCommand(oG_merc_gun6, ClearAllActions());
				AssignCommand(oG_merc_gun6, ActionMoveToLocation(GetLocation(object95), 1));
			}
			break;
		case 5:
			{
				object object97 = GetObjectByTag("WP_merc2_01", 0);
				object object99 = GetObjectByTag("WP_merc2_02", 0);
				object object101 = GetObjectByTag("WP_merc2_03", 0);
				object object103 = GetObjectByTag("WP_merc2_04", 0);
				object object105 = GetObjectByTag("WP_merc2_05", 0);
				object object107 = GetObjectByTag("WP_merc2_06", 0);
				object object109 = GetObjectByTag("WP_merc2_07", 0);
				CreateObject(1, "g_merc_az003", GetLocation(object97), 0);
				CreateObject(1, "g_merc_az004", GetLocation(object99), 0);
				CreateObject(1, "g_merc_az005", GetLocation(object101), 0);
				CreateObject(1, "g_merc_az006", GetLocation(object103), 0);
				CreateObject(1, "mercgun001", GetLocation(object105), 0);
				CreateObject(1, "mercgun002", GetLocation(object107), 0);
				CreateObject(1, "mercgun003", GetLocation(object109), 0);
				object object118 = GetObjectByTag("g_merc_melee1", 0);
				object object120 = GetObjectByTag("g_merc_melee2", 0);
				object object122 = GetObjectByTag("g_merc_melee3", 0);
				object object124 = GetObjectByTag("g_merc_melee4", 0);
				object object126 = GetObjectByTag("g_merc_gun1", 0);
				object object128 = GetObjectByTag("g_merc_gun2", 0);
				object object130 = GetObjectByTag("g_merc_gun3", 0);
				object object132 = GetObjectByTag("WP_merc3_01", 0);
				object object134 = GetObjectByTag("WP_merc3_02", 0);
				object object136 = GetObjectByTag("WP_merc3_03", 0);
				object object138 = GetObjectByTag("WP_merc3_04", 0);
				object object140 = GetObjectByTag("WP_merc3_05", 0);
				object object142 = GetObjectByTag("WP_merc3_06", 0);
				object object144 = GetObjectByTag("WP_merc3_07", 0);
				ChangeToStandardFaction(object118, 12);
				AssignCommand(object118, ClearAllActions());
				AssignCommand(object118, ActionMoveToLocation(GetLocation(object132), 1));
				ChangeToStandardFaction(object120, 12);
				AssignCommand(object120, ClearAllActions());
				AssignCommand(object120, ActionMoveToLocation(GetLocation(object134), 1));
				ChangeToStandardFaction(object122, 12);
				AssignCommand(object122, ClearAllActions());
				AssignCommand(object122, ActionMoveToLocation(GetLocation(object136), 1));
				ChangeToStandardFaction(object124, 12);
				AssignCommand(object124, ClearAllActions());
				AssignCommand(object124, ActionMoveToLocation(GetLocation(object138), 1));
				ChangeToStandardFaction(object126, 12);
				AssignCommand(object126, ClearAllActions());
				AssignCommand(object126, ActionMoveToLocation(GetLocation(object140), 1));
				ChangeToStandardFaction(object128, 12);
				AssignCommand(object128, ClearAllActions());
				AssignCommand(object128, ActionMoveToLocation(GetLocation(object142), 1));
				ChangeToStandardFaction(object130, 12);
				AssignCommand(object130, ClearAllActions());
				AssignCommand(object130, ActionMoveToLocation(GetLocation(object144), 1));
				DelayCommand(10.0, SetDialogPlaceableCamera(8));
				DelayCommand(15.0, SetDialogPlaceableCamera(9));
			}
			break;
	}
}
