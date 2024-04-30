// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;

// Prototypes
void sub13();
void sub12();
void sub11();
int sub10();
void sub9();
int sub8();
void sub7();
void sub6();
string sub5();
string sub4();
string sub3();
string sub2();
void sub1();

void sub13() {
	int nGlobal = GetGlobalNumber("602DAN_Wounded1_State");
	int int3 = GetGlobalNumber("602DAN_Wounded2_State");
	int int5 = GetGlobalNumber("602DAN_Wounded3_State");
	int int7 = GetGlobalNumber("602DAN_Wounded4_State");
	if (((((nGlobal == 1) && int3 = 1) && int5 = 1) && int7 = 1)) {
		AddJournalQuestEntry("khoonda_medic", 92, 0);
	}
}

void sub12() {
	if ((GetJournalEntry("khoonda_doors") == 10)) {
		int nGlobal = GetGlobalNumber("601DAN_Khoonda_Doors");
		if ((nGlobal == 1)) {
			AddJournalQuestEntry("khoonda_doors", 91, 0);
		}
		else {
			if ((nGlobal == 2)) {
				AddJournalQuestEntry("khoonda_doors", 90, 0);
			}
			else {
				AddJournalQuestEntry("khoonda_doors", 92, 0);
			}
		}
	}
}

void sub11() {
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

int sub10() {
	int nGlobal = GetGlobalNumber("602DAN_Turret_State");
	if ((nGlobal == 1)) {
		AddJournalQuestEntry("khoonda_guns", 90, 0);
		return intGLOB_4;
	}
	else {
		if ((nGlobal == 2)) {
			AddJournalQuestEntry("khoonda_guns", 91, 0);
			return intGLOB_4;
		}
		else {
			if ((nGlobal == 0)) {
				AddJournalQuestEntry("khoonda_guns", 93, 0);
				return intGLOB_1;
			}
			else {
				if ((nGlobal == 3)) {
					AddJournalQuestEntry("khoonda_guns", 94, 0);
					return intGLOB_1;
				}
				else {
					if ((nGlobal == 4)) {
						AddJournalQuestEntry("khoonda_guns", 92, 0);
						return intGLOB_5;
					}
					else {
						AddJournalQuestEntry("khoonda_guns", 93, 0);
						return intGLOB_1;
					}
				}
			}
		}
	}
}

void sub9() {
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

int sub8() {
	int nGlobal = GetGlobalNumber("601DAN_Mines_West");
	int int3 = GetGlobalNumber("601DAN_Mines_East");
	if (((nGlobal == 0) && (int3 == 0))) {
		AddJournalQuestEntry("khoonda_traps", 96, 0);
		return intGLOB_2;
	}
	else {
		if (((nGlobal >= 10) && (int3 >= 10))) {
			AddJournalQuestEntry("khoonda_traps", 91, 0);
			return intGLOB_3;
		}
		else {
			if ((((nGlobal + int3) > 12) && ((nGlobal < 10) || (int3 < 10)))) {
				AddJournalQuestEntry("khoonda_traps", 90, 0);
				return intGLOB_1;
			}
			else {
				if ((((nGlobal + int3) < 12) && ((nGlobal > 0) || (int3 > 0)))) {
					AddJournalQuestEntry("khoonda_traps", 95, 0);
					return intGLOB_1;
				}
				else {
					AddJournalQuestEntry("khoonda_traps", 97, 0);
					return intGLOB_1;
				}
			}
		}
	}
}

void sub7() {
	string string1 = sub2();
	string string3 = sub3();
	object object1;
	int int1;
	int int2 = 0;
	int1 = 21;
	while ((int1 < 24)) {
		object1 = GetObjectByTag(string1, int2);
		(int2++);
		DestroyObject(object1, 0.0, 0, 0.0, 0);
		(int1++);
	}
	int2 = 0;
	int1 = 11;
	while ((int1 < 14)) {
		object1 = GetObjectByTag(string3, int2);
		(int2++);
		DestroyObject(object1, 0.0, 0, 0.0, 0);
		(int1++);
	}
}

void sub6() {
	int int1 = 5;
	int int2 = 0;
	object oG_merc_west = GetObjectByTag("g_merc_east", 0);
	while (GetIsObjectValid(oG_merc_west)) {
		AurPostString("nuking a merc", 5, (int1++), 5.0);
		DestroyObject(oG_merc_west, 0.0, 0, 0.0, 0);
		oG_merc_west = GetObjectByTag("g_merc_east", (int2++));
	}
	oG_merc_west = GetObjectByTag("g_merc_west", 0);
	while (GetIsObjectValid(oG_merc_west)) {
		AurPostString("nuking a merc", 5, (int1++), 5.0);
		DestroyObject(oG_merc_west, 0.0, 0, 0.0, 0);
		oG_merc_west = GetObjectByTag("g_merc_west", (int2++));
	}
}

string sub5() {
	if ((GetGlobalNumber("601DAN_1Squad") == 2)) {
		return "g_militia004";
	}
	else {
		if ((GetGlobalNumber("601DAN_2Squad") == 2)) {
			return "g_militia006";
		}
		else {
			if ((GetGlobalNumber("601DAN_3Squad") == 2)) {
				return "g_militia005";
			}
			else {
				return "ERROR";
			}
		}
	}
}

string sub4() {
	if ((GetGlobalNumber("601DAN_1Squad") == 1)) {
		return "g_militia004";
	}
	else {
		if ((GetGlobalNumber("601DAN_2Squad") == 1)) {
			return "g_militia006";
		}
		else {
			if ((GetGlobalNumber("601DAN_3Squad") == 1)) {
				return "g_militia005";
			}
			else {
				return "ERROR";
			}
		}
	}
}

string sub3() {
	if ((GetGlobalNumber("601DAN_1Squad") == 2)) {
		return "g_militia";
	}
	else {
		if ((GetGlobalNumber("601DAN_2Squad") == 2)) {
			return "g_militia4";
		}
		else {
			if ((GetGlobalNumber("601DAN_3Squad") == 2)) {
				return "g_militia2";
			}
			else {
				return "ERROR";
			}
		}
	}
}

string sub2() {
	if ((GetGlobalNumber("601DAN_1Squad") == 1)) {
		return "g_militia";
	}
	else {
		if ((GetGlobalNumber("601DAN_2Squad") == 1)) {
			return "g_militia4";
		}
		else {
			if ((GetGlobalNumber("601DAN_3Squad") == 1)) {
				return "g_militia2";
			}
			else {
				return "ERROR";
			}
		}
	}
}

void sub1() {
	SetGlobalNumber("601DAN_1Squad", 1);
	SetGlobalNumber("601DAN_2Squad", 2);
	SetGlobalNumber("601DAN_3Squad", 4);
	SetGlobalBoolean("601DAN_PC_DOOR_DEFEND", 1);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AurPostString("ERROR: a_khoondad script.", 5, 15, 10.0);
			break;
		case 1:
			{
				object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
				if (GetIsObjectValid(oNpc_vrook)) {
					DestroyObject(oNpc_vrook, 0.0, 0, 0.0, 0);
				}
			}
			break;
		case 2:
			sub1();
			break;
		case 3:
			{
				int nParam2 = GetScriptParameter(2);
				string string1;
				if ((nParam2 & 1)) {
				string1 = "601DAN_1Squad";
				}
				else {
				if ((nParam2 & 2)) {
					string1 = "601DAN_2Squad";
				}
				else {
					if ((nParam2 & 4)) {
						string1 = "601DAN_3Squad";
					}
					else {
						string1 = "ERROR";
					}
				}
				}
				int int6;
				if ((nParam2 & 8)) {
					SetLocalBoolean(GetObjectByTag("npc_zherron", 0), 50, 1);
				int6 = 1;
				}
				else {
				if ((nParam2 & 16)) {
					SetLocalBoolean(GetObjectByTag("npc_zherron", 0), 51, 1);
					int6 = 2;
				}
				else {
					if ((nParam2 & 32)) {
						SetLocalBoolean(GetObjectByTag("npc_zherron", 0), 53, 1);
						int6 = 4;
					}
					else {
						int6 = 0;
					}
				}
				}
				if (((string1 == "ERROR") || (int6 == 0))) {
					AurPostString("ERROR: Setting squads!", 5, 15, 10.0);
				}
				else {
					SetGlobalNumber(string1, int6);
				}
			}
			break;
		case 4:
			{
				int int7 = GetScriptParameter(2);
				SetGlobalBoolean("601DAN_PC_DOOR_DEFEND", int7);
			}
			break;
		case 5:
			{
				string string2 = sub2();
				string string4 = sub3();
				object object6;
				int int9;
				int int10 = 0;
				int9 = 1;
				while ((int9 < 4)) {
				object6 = GetObjectByTag(string2, int10);
					(int10++);
					AssignCommand(object6, ClearAllActions());
					AssignCommand(object6, ActionPlayAnimation(108, 1.0, 0.0));
				{
					effect efAttackInc = EffectAttackIncrease(10, 0);
					ApplyEffectToObject(2, efAttackInc, object6, 0.0);
				}
					(int9++);
				}
				int10 = 0;
				int9 = 4;
				while ((int9 < 7)) {
				object6 = GetObjectByTag(string4, int10);
					(int10++);
					AssignCommand(object6, ClearAllActions());
					AssignCommand(object6, ActionPlayAnimation(108, 1.0, 0.0));
				{
					effect effect3 = EffectAttackIncrease(10, 0);
					ApplyEffectToObject(2, effect3, object6, 0.0);
				}
					(int9++);
				}
			}
			break;
		case 6:
			{
				string string6 = sub2();
				string string8 = sub3();
				object object9;
				int int11;
				int int12 = 0;
				int11 = 1;
				while ((int11 < 4)) {
				object9 = GetObjectByTag(string6, int12);
					(int12++);
					AssignCommand(object9, ClearAllActions());
				if ((int11 < 2)) {
					AssignCommand(object9, ActionPlayAnimation(108, 1.0, 0.0));
				}
				{
					effect effect5 = EffectAttackIncrease(5, 0);
					ApplyEffectToObject(2, effect5, object9, 0.0);
				}
					(int11++);
				}
				int12 = 0;
				int11 = 4;
				while ((int11 < 7)) {
				object9 = GetObjectByTag(string8, int12);
					(int12++);
					AssignCommand(object9, ClearAllActions());
				if ((int11 < 6)) {
					AssignCommand(object9, ActionPlayAnimation(108, 1.0, 0.0));
				}
				{
					effect effect7 = EffectAttackIncrease(5, 0);
					ApplyEffectToObject(2, effect7, object9, 0.0);
				}
					(int11++);
				}
			}
			break;
		case 7:
			{
				string string10 = sub2();
				string string12 = sub3();
				object object12;
				int int13;
				int int14 = 0;
				int13 = 1;
				while ((int13 < 4)) {
				object12 = GetObjectByTag(string10, int14);
					(int14++);
					AssignCommand(object12, ClearAllActions());
					AssignCommand(object12, ActionPlayAnimation(104, 1.0, 0.0));
					(int13++);
				}
				int14 = 0;
				int13 = 4;
				while ((int13 < 7)) {
				object12 = GetObjectByTag(string12, int14);
					(int14++);
					AssignCommand(object12, ClearAllActions());
					AssignCommand(object12, ActionPlayAnimation(104, 1.0, 0.0));
					(int13++);
				}
			}
			break;
		case 8:
			{
				string string14 = sub2();
				string string16 = sub3();
				object object15;
				int int15;
				int int16 = 0;
				int15 = 1;
				while ((int15 < 4)) {
				object15 = GetObjectByTag(string14, int16);
					(int16++);
					AssignCommand(object15, ClearAllActions());
				{
					float float1;
					int int17 = d2(1);
					if ((int17 == 1)) {
					float1 = 0.1;
					}
					else {
					float1 = 0.3;
					}
					DelayCommand(float1, AssignCommand(object15, ActionPlayAnimation(18, 1.0, 2.0)));
					effect effect9 = EffectAttackDecrease(5, 0);
					ApplyEffectToObject(2, effect9, object15, 0.0);
				}
					(int15++);
				}
				int16 = 0;
				int15 = 4;
				while ((int15 < 7)) {
				object15 = GetObjectByTag(string16, int16);
					(int16++);
					AssignCommand(object15, ClearAllActions());
				{
					float float2;
					int int19 = d2(1);
					if ((int19 == 1)) {
					float2 = 0.1;
					}
					else {
					float2 = 0.3;
					}
					DelayCommand(float2, AssignCommand(object15, ActionPlayAnimation(18, 1.0, 2.0)));
					effect effect11 = EffectAttackDecrease(5, 0);
					ApplyEffectToObject(2, effect11, object15, 0.0);
				}
					(int15++);
				}
			}
			break;
		case 10:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			sub1();
			{
				string string18 = sub4();
				string string20 = sub5();
				int int21 = 1;
				while ((int21 < 7)) {
				{
					string string22 = ("sp_g_militia" + IntToString(int21));
					object object18 = GetObjectByTag(string22, 0);
					if (GetIsObjectValid(object18)) {
					if ((int21 < 4)) {
						CreateObject(1, string18, GetLocation(object18), 0);
					}
					else {
						CreateObject(1, string20, GetLocation(object18), 0);
					}
					}
					else {
						AurPostString("ERROR spawning militia!", 5, 15, 10.0);
					}
				}
					(int21++);
				}
				SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			}
			break;
		case 11:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			break;
		case 12:
			break;
		case 13:
			break;
		case 14:
			break;
		case 15:
			break;
		case 16:
			break;
		case 17:
			break;
		case 18:
			SetGlobalNumber("601DAN_Side", 2);
			break;
		case 19:
			sub6();
			sub7();
			SetGlobalNumber("601DAN_Battle_Mili", 2);
			{
				int int23 = sub8();
				sub9();
				int int25 = sub10();
				sub11();
				sub12();
				sub13();
				if ((int23 == intGLOB_2)) {
					QueueMovie("KhoMov04", 1);
				}
				else {
				if ((int23 == intGLOB_3)) {
					QueueMovie("KhoMov03", 1);
				}
				}
				if ((int25 == intGLOB_4)) {
					QueueMovie("KhoMov01", 1);
				}
				else {
				if ((int25 == intGLOB_5)) {
					QueueMovie("KhoMov02", 1);
				}
				}
				QueueMovie("KhoMov05", 1);
				PlayMovieQueue(1);
			}
			break;
		case 20:
			StartNewModule("602DAN", "From_Battle_PC", "", "", "", "", "", "");
			break;
	}
}

