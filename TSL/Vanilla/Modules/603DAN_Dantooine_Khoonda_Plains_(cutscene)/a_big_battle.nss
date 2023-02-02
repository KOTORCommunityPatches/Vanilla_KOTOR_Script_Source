// Prototypes
void sub5();
void sub4();
void sub3();
void sub2();
void sub1();

void sub5() {
	int int1 = 1;
	while ((int1 < 6)) {
		{
			string string1 = ("WP_merc_0" + IntToString(int1));
			object object1 = GetObjectByTag(string1, 0);
			object oMercgun = CreateObject(1, "mercgun", GetLocation(object1), 0);
			if ((!GetIsObjectValid(oMercgun))) {
				AurPostString("Invalid Gun Merc", 13, 14, 10.0);
			}
			string string3 = ("WP_merc3_0" + IntToString(int1));
			ChangeToStandardFaction(oMercgun, 12);
			AssignCommand(oMercgun, ClearAllActions());
			AssignCommand(oMercgun, ActionMoveToLocation(GetLocation(GetObjectByTag(string3, 0)), 1));
		}
		(int1++);
	}
}

void sub4() {
	int int1 = 1;
	while ((int1 < 6)) {
		{
			string string1 = ("WP_merc_0" + IntToString(int1));
			object object1 = GetObjectByTag(string1, 0);
			object oG_merc_az = CreateObject(1, "g_merc_az", GetLocation(object1), 0);
			if ((!GetIsObjectValid(oG_merc_az))) {
				AurPostString("Invalid Melee Merc", 13, 13, 10.0);
			}
			string string3 = ("WP_merc2_0" + IntToString(int1));
			ChangeToStandardFaction(oG_merc_az, 12);
			AssignCommand(oG_merc_az, ClearAllActions());
			AssignCommand(oG_merc_az, ActionMoveToLocation(GetLocation(GetObjectByTag(string3, 0)), 1));
		}
		(int1++);
	}
}

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
			sub4();
			DelayCommand(10.0, SetDialogPlaceableCamera(6));
			DelayCommand(15.0, SetDialogPlaceableCamera(9));
			break;
		case 4:
			sub4();
			DelayCommand(1.0, sub5());
			break;
		case 5:
			sub4();
			DelayCommand(1.0, sub5());
			DelayCommand(10.0, SetDialogPlaceableCamera(8));
			DelayCommand(15.0, SetDialogPlaceableCamera(9));
			break;
	}
}
