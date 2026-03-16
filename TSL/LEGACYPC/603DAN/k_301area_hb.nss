// Prototypes
void sub4();
int sub3();
void sub2();
int sub1();

void sub4() {
	AurPostString("Spawning new Back Merc", 5, 18, 10.0);
	int int1 = d2(1);
	object oG_merc_az = CreateObject(1, "g_merc_az", GetLocation(GetObjectByTag("sp_g_merc_az11", 0)), 0);
	if ((GetGlobalNumber("601DAN_Side") == 1)) {
		ChangeToStandardFaction(oG_merc_az, 1);
	}
	else {
		if ((GetGlobalNumber("601DAN_Side") == 2)) {
			ChangeToStandardFaction(oG_merc_az, 2);
		}
	}
	AssignCommand(oG_merc_az, ClearAllActions());
	AssignCommand(oG_merc_az, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_1", 0)), 1));
	AssignCommand(oG_merc_az, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_2", 0)), 1));
	AssignCommand(oG_merc_az, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_3", 0)), 1));
}

int sub3() {
	int int1 = 0;
	object oG_merc_east = GetObjectByTag("g_merc_east", int1);
	while (GetIsObjectValid(oG_merc_east)) {
		(int1++);
		oG_merc_east = GetObjectByTag("g_merc_east", int1);
	}
	AurPostString(("CheckBackCount returned: " + IntToString(int1)), 5, 20, 10.0);
	return int1;
}

void sub2() {
	AurPostString("Spawning new Front Merc", 5, 17, 10.0);
	int int1 = d2(1);
	object oG_merc_az001 = CreateObject(1, "g_merc_az001", GetLocation(GetObjectByTag("sp_g_merc_az21", 0)), 0);
	if ((GetGlobalNumber("601DAN_Side") == 1)) {
		ChangeToStandardFaction(oG_merc_az001, 1);
	}
	else {
		if ((GetGlobalNumber("601DAN_Side") == 2)) {
			ChangeToStandardFaction(oG_merc_az001, 2);
		}
	}
	AssignCommand(oG_merc_az001, ClearAllActions());
	AssignCommand(oG_merc_az001, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_1", 0)), 1));
	AssignCommand(oG_merc_az001, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_2", 0)), 1));
	AssignCommand(oG_merc_az001, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_3", 0)), 1));
}

int sub1() {
	int int1 = 0;
	object oG_merc_west = GetObjectByTag("g_merc_west", int1);
	while (GetIsObjectValid(oG_merc_west)) {
		(int1++);
		oG_merc_west = GetObjectByTag("g_merc_west", int1);
	}
	AurPostString(("CheckFrontCount returned: " + IntToString(int1)), 5, 19, 10.0);
	return int1;
}

void main() {
	if ((GetGlobalNumber("601DAN_Battle_Mili") == 1)) {
		AurPostString("Firing HB", 5, 16, 10.0);
		int int2 = sub1();
		while ((int2 < 6)) {
			sub2();
			(int2++);
		}
		int int4 = sub3();
		while ((int4 < 6)) {
			sub4();
			(int4++);
		}
	}
}

