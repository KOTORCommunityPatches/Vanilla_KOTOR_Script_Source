// Prototypes
void sub3();
void sub2();
object sub1(string stringParam1, int intParam2);

void sub3() {
	if ((GetGlobalNumber("601DAN_HK50_Spawn") == 0)) {
		CreateObject(1, "p_hk048", GetLocation(GetObjectByTag("wp_hk501", 0)), 0);
		CreateObject(1, "p_hk049", GetLocation(GetObjectByTag("wp_hk502", 0)), 0);
		CreateObject(1, "p_hk050", GetLocation(GetObjectByTag("wp_hk503", 0)), 0);
		SetGlobalNumber("601DAN_HK50_Spawn", 1);
	}
}

void sub2() {
	int int1 = 5;
	int int2 = 0;
	object oG_kinrath04 = GetObjectByTag("KhoundA", int2);
	while (GetIsObjectValid(oG_kinrath04)) {
		DestroyObject(oG_kinrath04, 0.0, 0, 0.0, 0);
		oG_kinrath04 = GetObjectByTag("KhoundA", (int2++));
	}
	int2 = 0;
	oG_kinrath04 = GetObjectByTag("KhoundB", int2);
	while (GetIsObjectValid(oG_kinrath04)) {
		DestroyObject(oG_kinrath04, 0.0, 0, 0.0, 0);
		oG_kinrath04 = GetObjectByTag("KhoundB", (int2++));
	}
	int2 = 0;
	oG_kinrath04 = GetObjectByTag("Kinrath", int2);
	while (GetIsObjectValid(oG_kinrath04)) {
		DestroyObject(oG_kinrath04, 0.0, 0, 0.0, 0);
		oG_kinrath04 = GetObjectByTag("Kinrath", (int2++));
	}
	int2 = 0;
	oG_kinrath04 = GetObjectByTag("g_kinrath04", int2);
	while (GetIsObjectValid(oG_kinrath04)) {
		DestroyObject(oG_kinrath04, 0.0, 0, 0.0, 0);
		oG_kinrath04 = GetObjectByTag("g_kinrath04", (int2++));
	}
}

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((!GetGlobalBoolean("601_FIRST_ENTER"))) {
			SetGlobalBoolean("601_FIRST_ENTER", 1);
		}
		object oTo_ebonhawk = GetObjectByTag("to_ebonhawk", 0);
		if (((GetGlobalNumber("604DAN_Vrook_Status") > 2) && (GetGlobalNumber("601DAN_Azkul") == 0))) {
			SetGlobalFadeIn(0.1, 1.0, 0.0, 0.0, 0.0);
			sub1("npc_azkul", 0);
			int int5 = 0;
			while ((int5 <= 5)) {
				sub1("g_merc_az", int5);
				(int5++);
			}
			sub2();
			DelayCommand(0.5, AssignCommand(GetObjectByTag("npc_azkul", 0), ActionStartConversation(GetFirstPC(), "azkul", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		if ((GetGlobalNumber("602DAN_End") > 0)) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			ExecuteScript("a_clean_up", oEntering, 0xFFFFFFFF);
			sub3();
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		}
	}
	if ((GetGlobalNumber("601DAN_Akkere") == 2)) {
		DestroyObject(GetObjectByTag("npc_akkere", 0), 0.0, 1, 0.0, 1);
		SetGlobalNumber("601DAN_Akkere", 4);
	}
	if ((GetGlobalNumber("601DAN_Dillan") == 2)) {
		DestroyObject(GetObjectByTag("npc_dillan", 0), 0.0, 1, 0.0, 1);
		SetGlobalNumber("601DAN_Dillan", 4);
	}
	if ((GetGlobalNumber("601DAN_Saedhe") == 2)) {
		DestroyObject(GetObjectByTag("npc_saedhe", 0), 0.0, 1, 0.0, 1);
		SetGlobalNumber("601DAN_Saedhe", 4);
	}
	else {
		if (((GetGlobalNumber("601DAN_Saedhe") == 3) || (GetGlobalNumber("601DAN_Saedhe") == 0))) {
			AssignCommand(GetObjectByTag("npc_saedhe", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("npc_saedhe", 0), JumpToObject(GetObjectByTag("wp_saedhe_end", 0), 1));
			SetGlobalNumber("601DAN_Saedhe", 5);
		}
	}
}

