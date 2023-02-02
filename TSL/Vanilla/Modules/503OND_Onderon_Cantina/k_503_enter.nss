// Globals
	int intGLOB_1 = 4304;
	int intGLOB_2 = 4711;
	int intGLOB_3 = 5164;
	int intGLOB_4 = 5501;

// Prototypes
object sub4(string stringParam1, int intParam2);
void sub3();
void sub2(int intParam1, int intParam2);
void sub1();

object sub4(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void sub3() {
	object oSittingRodian = GetObjectByTag("SittingCommMale", 0);
	DelayCommand(0.1, AssignCommand(oSittingRodian, ActionPlayAnimation(206, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingSwoopganger", 0);
	DelayCommand(1.3, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommFemale", 0);
	DelayCommand(0.7, AssignCommand(oSittingRodian, ActionPlayAnimation(206, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingSwoopganger", 1);
	DelayCommand(0.3, AssignCommand(oSittingRodian, ActionPlayAnimation(204, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingAlien", 0);
	DelayCommand(1.0, AssignCommand(oSittingRodian, ActionPlayAnimation(204, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommFemale", 1);
	DelayCommand(2.1, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommMale", 1);
	DelayCommand(2.2, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingWalrusman", 0);
	DelayCommand(0.1, AssignCommand(oSittingRodian, ActionPlayAnimation(204, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingBith", 0);
	DelayCommand(1.3, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingBith", 1);
	DelayCommand(0.1, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingRodian", 0);
	DelayCommand(2.2, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommMale", 2);
	DelayCommand(0.1, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommMale", 3);
	DelayCommand(0.8, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommFemale", 2);
	DelayCommand(1.2, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingRodian = GetObjectByTag("SittingCommFemale", 3);
	DelayCommand(0.3, AssignCommand(oSittingRodian, ActionPlayAnimation(205, 1.0, 0.0)));
}

void sub2(int intParam1, int intParam2) {
	int int1 = (intParam2 / 6000);
	int int2 = ((intParam2 % 6000) / 100);
	int int3 = ((intParam2 % 6000) % 100);
	string string1 = IntToString(int1);
	string string3;
	string string4;
	if ((int2 < 10)) {
		string3 = ("0" + IntToString(int2));
	}
	else {
		string3 = IntToString(int2);
	}
	if ((int3 < 10)) {
		string4 = ("0" + IntToString(int3));
	}
	else {
		string4 = IntToString(int3);
	}
	SetCustomToken(intParam1, ((((string1 + ":") + string3) + ":") + string4));
}

void sub1() {
	AurPostString("Doing Swoop Stuff...", 5, 5, 5.0);
	int int1 = (((GetGlobalNumber("510OND_SWOOP_B_MIN") * 6000) + (GetGlobalNumber("510OND_SWOOP_B_SEC") * 100)) + GetGlobalNumber("510OND_SWOOP_B_MSEC"));
	sub2(50, intGLOB_1);
	sub2(51, intGLOB_2);
	sub2(52, intGLOB_3);
	sub2(53, intGLOB_4);
	sub2(54, int1);
	SetCustomToken(55, "00:00:0000");
	object oQimtiq = GetObjectByTag("qimtiq", 0);
	if ((!GetLocalBoolean(oQimtiq, 49))) {
		return;
	}
	AurPostString("Got back from racing...", 5, 2, 5.0);
	int int6 = (((GetGlobalNumber("510OND_SWOOP_MIN") * 6000) + (GetGlobalNumber("510OND_SWOOP_SEC") * 100)) + GetGlobalNumber("510OND_SWOOP_MSEC"));
	sub2(55, int6);
	if (((((GetGlobalNumber("510OND_SWOOP_MIN") == 59) && (GetGlobalNumber("510OND_SWOOP_SEC") == 59)) && (GetGlobalNumber("510OND_SWOOP_MSEC") == 99)) || GetGlobalBoolean("FORFEIT_SWOOPRACE"))) {
		SetLocalBoolean(oQimtiq, 28, 1);
		return;
	}
	int nLocal = GetLocalNumber(oQimtiq, 12);
	AurPostString(("Challenger is: " + IntToString(nLocal)), 5, 3, 5.0);
	switch (nLocal) {
		case 0:
			if ((int6 < intGLOB_4)) {
				SetLocalBoolean(oQimtiq, 41, 1);
			}
			else {
				SetLocalBoolean(oQimtiq, 40, 1);
			}
			break;
		case 1:
			if ((int6 < intGLOB_3)) {
				SetLocalBoolean(oQimtiq, 41, 1);
			}
			else {
				SetLocalBoolean(oQimtiq, 40, 1);
			}
			break;
		case 2:
			if ((int6 < intGLOB_2)) {
				SetLocalBoolean(oQimtiq, 41, 1);
			}
			else {
				SetLocalBoolean(oQimtiq, 40, 1);
			}
			break;
		case 3:
			if ((int6 < intGLOB_1)) {
				SetLocalBoolean(oQimtiq, 41, 1);
			}
			else {
				SetLocalBoolean(oQimtiq, 40, 1);
			}
			break;
	}
	SetGlobalNumber("510OND_SWOOP_MIN", 0);
	SetGlobalNumber("510OND_SWOOP_SEC", 0);
	SetGlobalNumber("510OND_SWOOP_MSEC", 0);
}

void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	sub1();
	sub3();
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oKavar = GetObjectByTag("gelesi", 0);
	if (((GetJournalEntry("cantinarats") == 10) && (!GetLocalBoolean(GetWaypointByTag("wp_bakkel"), 40)))) {
		AurPostString("Spawning Bakkel, removing panar", 5, 5, 5.0);
		CreateObject(1, "npc_bakkel", GetLocation(GetWaypointByTag("wp_bakkel")), 0);
		SetLocalBoolean(GetWaypointByTag("wp_bakkel"), 40, 1);
		DestroyObject(GetObjectByTag("npc_panar", 0), 0.0, 0, 0.0, 0);
		DestroyObject(oKavar, 0.0, 0, 0.0, 0);
	}
	if (((!GetIsObjectValid(oKavar)) && (GetGlobalNumber("502OND_Gelesi_Cantina") == 1))) {
		sub4("npc_gelesi", 0);
	}
	oKavar = GetObjectByTag("kavar", 0);
	if (((!GetIsObjectValid(oKavar)) && (GetGlobalNumber("502OND_End_First") == 1))) {
		sub4("npc_kavar", 0);
		if (GetIsObjectValid(oKavar)) {
			DestroyObject(oKavar, 0.0, 1, 0.0, 0);
		}
	}
}
