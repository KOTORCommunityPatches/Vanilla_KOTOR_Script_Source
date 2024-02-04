// Prototypes
void sub3(object objectParam1);
void sub2(object objectParam1);
void sub1();

void sub3(object objectParam1) {
	ChangeToStandardFaction(objectParam1, 1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_1", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_2", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_3", 0)), 1));
}

void sub2(object objectParam1) {
	ChangeToStandardFaction(objectParam1, 1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_1", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_2", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_3", 0)), 1));
}

void sub1() {
	if (((GetGlobalNumber("601DAN_Battle_Mili") == 0) || (GetGlobalNumber("601DAN_Battle_Mili") == 4))) {
		AurPostString("Battle not ON.", 5, 15, 10.0);
	}
	else {
		string string1 = "khoonda_turret";
		int nGlobal = GetGlobalNumber("602DAN_Turret_State");
		int int5 = 1;
		while ((int5 <= 3)) {
			{
				string string2 = (string1 + IntToString(int5));
				object object1 = GetObjectByTag(string2, 0);
				if (GetIsObjectValid(object1)) {
				if ((nGlobal == 0)) {
					ChangeToStandardFaction(object1, 6);
				}
				else {
					if ((nGlobal == 1)) {
						ChangeToStandardFaction(object1, 2);
					}
					else {
						if ((nGlobal == 2)) {
							ChangeToStandardFaction(object1, 1);
						}
					}
				}
				}
			}
			(int5++);
		}
	}
}

void main() {
	sub1();
	int int1 = 0;
	while ((int1 < 6)) {
		{
			object oG_merc_west = GetObjectByTag("g_merc_west", int1);
			if (GetIsObjectValid(oG_merc_west)) {
				sub2(oG_merc_west);
			}
		}
		(int1++);
	}
	int1 = 0;
	while ((int1 < 6)) {
		{
			object oG_merc_east = GetObjectByTag("g_merc_east", int1);
			if (GetIsObjectValid(oG_merc_east)) {
				sub3(oG_merc_east);
			}
		}
		(int1++);
	}
}