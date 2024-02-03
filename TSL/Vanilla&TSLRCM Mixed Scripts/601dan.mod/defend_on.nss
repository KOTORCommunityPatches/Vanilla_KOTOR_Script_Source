// Prototypes
void sub11(object objectParam1);
void sub10(object objectParam1);
void sub9();
void sub8(string stringParam1);
void sub7();
void sub6();
void sub5();
void sub4();
void sub3();
void sub2();
void sub1();

void sub11(object objectParam1) {
	ChangeToStandardFaction(objectParam1, 1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_1", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_2", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_back_atk_3", 0)), 1));
}

void sub10(object objectParam1) {
	ChangeToStandardFaction(objectParam1, 1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_1", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_2", 0)), 1));
	AssignCommand(objectParam1, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_3", 0)), 1));
}

void sub9() {
	sub8("turret_fake_a");
	sub8("turret_fake_b");
	sub8("turret_fake_c");
}

void sub8(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 0, 0.0, 0);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void sub7() {
	sub8("khoonda_turret2");
	sub8("khoonda_turret3");
	sub8("khoonda_turret1");
}

void sub6() {
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
					AddJournalQuestEntry("khoonda_guns", 93, 0);
					ChangeToStandardFaction(object1, 6);
				}
				else {
					if ((nGlobal == 1)) {
						AddJournalQuestEntry("khoonda_guns", 90, 0);
						ChangeToStandardFaction(object1, 2);
					}
					else {
						if ((nGlobal == 2)) {
							AddJournalQuestEntry("khoonda_guns", 91, 0);
							ChangeToStandardFaction(object1, 1);
						}
						else {
							if ((nGlobal == 4)) {
								AddJournalQuestEntry("khoonda_guns", 92, 0);
								ChangeToStandardFaction(object1, 11);
								sub7();
							}
						}
					}
				}
				}
				(int5++);
			}
		}
	}
}

void sub5() {
	int nGlobal = GetGlobalNumber("602DAN_Wounded1_State");
	int int3 = GetGlobalNumber("602DAN_Wounded2_State");
	int int5 = GetGlobalNumber("602DAN_Wounded3_State");
	int int7 = GetGlobalNumber("602DAN_Wounded4_State");
	if (((((nGlobal == 1) && (int3 == 1)) && (int5 == 1)) && (int7 == 1))) {
		AddJournalQuestEntry("khoonda_medic", 92, 0);
	}
	else {
		if (((((nGlobal == 2) && (int3 == 2)) && (int5 == 2)) && (int7 == 2))) {
			if ((GetJournalEntry("khoonda_medic") != 90)) {
				AddJournalQuestEntry("khoonda_medic", 91, 0);
			}
		}
		else {
			AddJournalQuestEntry("khoonda_medic", 93, 0);
		}
	}
}

void sub4() {
	int nGlobal = GetGlobalNumber("601DAN_Mines_West");
	int int3 = GetGlobalNumber("601DAN_Mines_East");
	if (((nGlobal == 0) && (int3 == 0))) {
		AddJournalQuestEntry("khoonda_traps", 96, 0);
	}
	else {
		if (((nGlobal >= 10) && (int3 >= 10))) {
			AddJournalQuestEntry("khoonda_traps", 91, 0);
		}
		else {
			if ((((nGlobal + int3) > 12) && ((nGlobal < 10) || (int3 < 10)))) {
				AddJournalQuestEntry("khoonda_traps", 90, 0);
			}
			else {
				if ((((nGlobal + int3) < 12) && ((nGlobal > 0) || (int3 > 0)))) {
					AddJournalQuestEntry("khoonda_traps", 95, 0);
				}
				else {
					AddJournalQuestEntry("khoonda_traps", 97, 0);
				}
			}
		}
	}
}

void sub3() {
	int nGlobal = GetGlobalNumber("602DAN_Droids_Active");
	int int3 = GetGlobalNumber("602DAN_Droid_State");
	if ((nGlobal < 3)) {
		AddJournalQuestEntry("khoonda_droids", 92, 0);
	}
	else {
		if (((int3 == 0) && (nGlobal == 3))) {
			AddJournalQuestEntry("khoonda_droids", 90, 0);
		}
		else {
			if ((int3 == 1)) {
				AddJournalQuestEntry("khoonda_droids", 91, 0);
			}
			else {
				AddJournalQuestEntry("khoonda_droids", 92, 0);
			}
		}
	}
}

void sub2() {
	int nGlobal = GetGlobalNumber("601DAN_Side");
	if ((nGlobal == 2)) {
		AddJournalQuestEntry("khoonda_morale", 91, 0);
	}
	else {
		if ((nGlobal == 1)) {
			int int3 = 0;
			if ((GetGlobalNumber("605DAN_Jorran") == 1)) {
				(int3++);
			}
			if ((GetGlobalNumber("602DAN_Suulru") == 1)) {
				(int3++);
			}
			if ((GetGlobalNumber("601DAN_Akkere") == 1)) {
				(int3++);
			}
			if ((GetGlobalNumber("601DAN_Dillan") == 1)) {
				(int3++);
			}
			if ((int3 == 4)) {
				AddJournalQuestEntry("khoonda_morale", 90, 0);
			}
			else {
				if ((int3 == 0)) {
					AddJournalQuestEntry("khoonda_morale", 92, 0);
				}
				else {
					AddJournalQuestEntry("khoonda_morale", 93, 0);
				}
			}
		}
	}
}

void sub1() {
	if ((GetJournalEntry("khoonda_doors") == 10)) {
		AddJournalQuestEntry("khoonda_doors", 92, 0);
	}
}

void main() {
	SetGlobalNumber("601DAN_Battle_Start", 1);
	sub1();
	sub2();
	sub3();
	sub4();
	sub5();
	sub6();
	sub9();
	int int1 = 0;
	while ((int1 < 18)) {
		{
			object oG_merc_west = GetObjectByTag("g_merc_west", int1);
			if (GetIsObjectValid(oG_merc_west)) {
				sub10(oG_merc_west);
			}
		}
		(int1++);
	}
	int1 = 0;
	while ((int1 < 17)) {
		{
			object oG_merc_east = GetObjectByTag("g_merc_east", int1);
			if (GetIsObjectValid(oG_merc_east)) {
				sub11(oG_merc_east);
			}
		}
		(int1++);
	}
	SetGlobalNumber("601DAN_Battle_Start", 1);
	ExecuteScript("ingamefixb", GetFirstPC(), 0xFFFFFFFF);
	if ((GetGlobalNumber("602DAN_Turret_State") == 4)) {
	}
}

