// Prototypes
void sub5();
string sub4();
string sub3();
string sub2();
string sub1();

void sub5() {
	int int1 = 5;
	int int2 = 0;
	object oNpc_azkul = GetObjectByTag("g_merc_east", 0);
	while (GetIsObjectValid(oNpc_azkul)) {
		AurPostString("nuking a merc", 5, (int1++), 5.0);
		DestroyObject(oNpc_azkul, 0.0, 0, 0.0, 0);
		oNpc_azkul = GetObjectByTag("g_merc_east", (int2++));
	}
	oNpc_azkul = GetObjectByTag("g_merc_west", 0);
	while (GetIsObjectValid(oNpc_azkul)) {
		AurPostString("nuking a merc", 5, (int1++), 5.0);
		DestroyObject(oNpc_azkul, 0.0, 0, 0.0, 0);
		oNpc_azkul = GetObjectByTag("g_merc_west", (int2++));
	}
	oNpc_azkul = GetObjectByTag("npc_azkul", 0);
	if (GetIsObjectValid(oNpc_azkul)) {
		DestroyObject(oNpc_azkul, 0.0, 0, 0.0, 0);
	}
}

string sub4() {
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

string sub3() {
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

string sub2() {
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

string sub1() {
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
			SetGlobalNumber("601DAN_1Squad", 1);
			SetGlobalNumber("601DAN_2Squad", 2);
			SetGlobalNumber("601DAN_3Squad", 4);
			SetGlobalBoolean("601DAN_PC_DOOR_DEFEND", 1);
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
				string string2 = sub1();
				string string4 = sub2();
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
				string string6 = sub1();
				string string8 = sub2();
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
				string string10 = sub1();
				string string12 = sub2();
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
				string string14 = sub1();
				string string16 = sub2();
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
			{
				string string18 = sub3();
				string string20 = sub4();
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
			}
			break;
		case 11:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			break;
		case 12:
			{
				string string24 = sub1();
				string string26 = sub2();
				object object22;
				int int23;
				int int24 = 0;
				int23 = 21;
				while ((int23 < 24)) {
				{
					string string28 = ("wp_g_militia" + IntToString(int23));
					object object23 = GetObjectByTag(string28, 0);
					object22 = GetObjectByTag(string24, int24);
					(int24++);
					AssignCommand(object22, ClearAllActions());
					AssignCommand(object22, ActionJumpToLocation(GetLocation(object23)));
				}
					(int23++);
				}
				int24 = 0;
				int23 = 11;
				while ((int23 < 14)) {
				{
					string string30 = ("wp_g_militia" + IntToString(int23));
					object object26 = GetObjectByTag(string30, 0);
					object22 = GetObjectByTag(string26, int24);
					(int24++);
					AssignCommand(object22, ClearAllActions());
					AssignCommand(object22, ActionJumpToLocation(GetLocation(object26)));
				}
					(int23++);
				}
				sub5();
				int23 = 11;
				while ((int23 < 17)) {
				{
					string string32 = ("sp_g_merc_az" + IntToString(int23));
					object object29 = GetObjectByTag(string32, 0);
					CreateObject(1, "g_merc_az", GetLocation(object29), 0);
				}
					(int23++);
				}
				int23 = 21;
				while ((int23 < 27)) {
				{
					string string34 = ("sp_g_merc_az" + IntToString(int23));
					object object32 = GetObjectByTag(string34, 0);
					CreateObject(1, "g_merc_az001", GetLocation(object32), 0);
				}
					(int23++);
				}
			}
			break;
		case 13:
			SetGlobalNumber("601DAN_Battle_Mili", 1);
			{
				object oPC = GetFirstPC();
				object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oNpc_zherron, ClearAllActions());
				if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
					AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
					AssignCommand(oNpc_zherron, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
				}
				else {
					AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_back", 0))));
					AssignCommand(oNpc_zherron, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_player_front", 0))));
				}
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			}
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
	}
}

