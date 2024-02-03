// Globals
	int intGLOB_1 = 4127;
	int intGLOB_2 = 4473;
	int intGLOB_3 = 5003;
	int intGLOB_4 = 5801;

// Prototypes
void sub2(int intParam1, int intParam2);
void sub1();

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
	int int1 = (((GetGlobalNumber("211TEL_SWOOP_B_MIN") * 6000) + (GetGlobalNumber("211TEL_SWOOP_B_SEC") * 100)) + GetGlobalNumber("211TEL_SWOOP_B_MSEC"));
	sub2(50, intGLOB_1);
	sub2(51, intGLOB_2);
	sub2(52, intGLOB_3);
	sub2(53, intGLOB_4);
	sub2(54, int1);
	SetCustomToken(55, "00:00:0000");
	object oSwoopMC = GetObjectByTag("SwoopMC", 0);
	if ((!GetLocalBoolean(oSwoopMC, 50))) {
		return;
	}
	AurPostString("Doing Swoop Stuff...", 5, 5, 5.0);
	if (GetLocalBoolean(oSwoopMC, 53)) {
		SetLocalBoolean(oSwoopMC, 55, 1);
	}
	SetLocalBoolean(oSwoopMC, 53, 1);
	int int7 = (((GetGlobalNumber("211TEL_SWOOP_MIN") * 6000) + (GetGlobalNumber("211TEL_SWOOP_SEC") * 100)) + GetGlobalNumber("211TEL_SWOOP_MSEC"));
	sub2(55, int7);
	if (((int7 < int1) || (int1 == 0))) {
		SetLocalBoolean(oSwoopMC, 52, 1);
	}
	if (((((GetGlobalNumber("211TEL_SWOOP_MIN") == 59) && (GetGlobalNumber("211TEL_SWOOP_SEC") == 59)) && (GetGlobalNumber("211TEL_SWOOP_MSEC") == 99)) || GetGlobalBoolean("FORFEIT_SWOOPRACE"))) {
		SetLocalBoolean(oSwoopMC, 28, 1);
		return;
	}
	if (GetLocalBoolean(oSwoopMC, 51)) {
		return;
	}
	SetLocalBoolean(oSwoopMC, 40, 0);
	SetLocalBoolean(oSwoopMC, 41, 0);
	SetLocalBoolean(oSwoopMC, 42, 0);
	SetLocalBoolean(oSwoopMC, 43, 0);
	if (((int7 < int1) || (int1 == 0))) {
		int1 = int7;
		SetGlobalNumber("211TEL_SWOOP_B_MIN", GetGlobalNumber("211TEL_SWOOP_MIN"));
		SetGlobalNumber("211TEL_SWOOP_B_SEC", GetGlobalNumber("211TEL_SWOOP_SEC"));
		SetGlobalNumber("211TEL_SWOOP_B_MSEC", GetGlobalNumber("211TEL_SWOOP_MSEC"));
		sub2(54, int1);
		SetLocalBoolean(oSwoopMC, 52, 1);
	}
	else {
		SetLocalBoolean(oSwoopMC, 52, 0);
	}
	if ((int7 < intGLOB_1)) {
		SetGlobalNumber("207TEL_Swoop_Champ", 1);
		SetLocalBoolean(oSwoopMC, 40, 1);
	}
	if ((int7 < intGLOB_2)) {
		SetLocalBoolean(oSwoopMC, 41, 1);
	}
	if ((int7 < intGLOB_3)) {
		SetLocalBoolean(oSwoopMC, 42, 1);
	}
	if ((int7 < intGLOB_4)) {
		SetLocalBoolean(oSwoopMC, 43, 1);
	}
	if ((int1 < intGLOB_1)) {
		SetLocalBoolean(oSwoopMC, 30, 1);
	}
	if ((int1 < intGLOB_2)) {
		SetLocalBoolean(oSwoopMC, 31, 1);
	}
	if ((int1 < intGLOB_3)) {
		SetLocalBoolean(oSwoopMC, 32, 1);
	}
	if ((int1 < intGLOB_4)) {
		SetLocalBoolean(oSwoopMC, 33, 1);
	}
	SetGlobalNumber("211TEL_SWOOP_MIN", 0);
	SetGlobalNumber("211TEL_SWOOP_SEC", 0);
	SetGlobalNumber("211TEL_SWOOP_MSEC", 0);
}

void main() {
	if ((GetFirstPC() != GetEnteringObject())) {
		return;
	}
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	sub1();
	object oSittingWalrusman = GetObjectByTag("SittingAlien2", 0);
	AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0));
	oSittingWalrusman = GetObjectByTag("SittingRodian", 0);
	DelayCommand(0.1, AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingAlien", 0);
	DelayCommand(0.2, AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingSwoopganger", 0);
	DelayCommand(0.3, AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingCommMale", 0);
	DelayCommand(0.4, AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingBith", 0);
	DelayCommand(0.5, AssignCommand(oSittingWalrusman, ActionPlayAnimation(206, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingCommFemale", 0);
	DelayCommand(0.6, AssignCommand(oSittingWalrusman, ActionPlayAnimation(206, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingCommMale", 1);
	DelayCommand(0.7, AssignCommand(oSittingWalrusman, ActionPlayAnimation(206, 1.0, 0.0)));
	oSittingWalrusman = GetObjectByTag("SittingWalrusman", 0);
	AssignCommand(oSittingWalrusman, ActionPlayAnimation(206, 1.0, 0.0));
	oSittingWalrusman = GetObjectByTag("SittingCommFemale", 1);
	DelayCommand(0.8, AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0)));
	if ((GetGlobalNumber("207TEL_Benok") == 3)) {
		DestroyObject(GetObjectByTag("207_nahata", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("207_matu", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("207_benok", 0), 0.0, 0, 0.0, 0);
		SetGlobalNumber("207TEL_Benok", 1);
	}
	if (GetGlobalBoolean("207TEL_Destroy_Luxa")) {
		SetGlobalBoolean("207TEL_Destroy_Luxa", 0);
		DestroyObject(GetObjectByTag("207_Luxa", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("g_gam_luxa", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("g_gam_luxa", 1), 0.0, 0, 0.0, 0);
	}
	if ((GetGlobalNumber("207TEL_Benok") == 1)) {
		SetGlobalNumber("207TEL_Benok", 2);
		CreateObject(1, "n_telf01s", GetLocation(GetObjectByTag("wp_cantinaf1", 0)), 0);
		CreateObject(1, "n_telm02s", GetLocation(GetObjectByTag("wp_cantinaf2", 0)), 0);
	}
	if ((GetGlobalNumber("207TEL_Dancer_Spawn") == 1)) {
		SetGlobalNumber("207TEL_Dancer_Spawn", 2);
		if ((GetGlobalNumber("203TEL_Ramana") == 4)) {
			SetGlobalNumber("203TEL_Ramana", 5);
			DestroyObject(GetObjectByTag("ramana", 0), 0.0, 0, 0.0, 0);
			CreateObject(1, "tar02_musictw001", GetLocation(GetObjectByTag("wp_dancer_sp", 0)), 0);
		}
		if ((GetGlobalNumber("203TEL_Ramana") == 1)) {
			SetGlobalNumber("203TEL_Ramana", 2);
			DestroyObject(GetObjectByTag("doton", 0), 0.0, 0, 0.0, 0);
			CreateObject(1, "203_harra", GetLocation(GetObjectByTag("wp_viewer_sp", 0)), 0);
		}
		if ((GetGlobalNumber("203TEL_Ramana") == 3)) {
			DestroyObject(GetObjectByTag("doton", 0), 0.0, 0, 0.0, 0);
		}
	}
	if (GetGlobalBoolean("207TEL_Destroy_Falt")) {
		SetGlobalBoolean("207TEL_Destroy_Falt", 0);
		DestroyObject(GetObjectByTag("207_Falt", 0), 0.0, 0, 0.0, 0);
	}
	if ((GetGlobalNumber("200TEL_Falt_Arrest") == 6)) {
		SetGlobalNumber("200TEL_Falt_Arrest", 7);
		object oCsd1 = CreateObject(1, "csd1", GetLocation(GetObjectByTag("wp_csd1_sp", 0)), 0);
		CreateObject(1, "csd2", GetLocation(GetObjectByTag("wp_csd2_sp", 0)), 0);
		AssignCommand(oCsd1, ClearAllActions());
		AssignCommand(oCsd1, ActionStartConversation(GetFirstPC(), "czerka", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if (GetLocalBoolean(GetObjectByTag("SwoopMC", 0), 50)) {
		AssignCommand(GetObjectByTag("SwoopMC", 0), ClearAllActions());
		DelayCommand(0.1, AssignCommand(GetObjectByTag("SwoopMC", 0), ActionStartConversation(GetFirstPC(), "207swpmc", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	SetGlobalFadeIn(2.0, 1.0, 0.0, 0.0, 0.0);
	object oArea = GetArea(OBJECT_SELF);
	if (GetIsObjectValid(GetObjectByTag("204_b4d4", 0))) {
		MusicBackgroundStop(oArea);
		MusicBackgroundChangeDay(oArea, 16, 0);
		MusicBackgroundChangeNight(oArea, 16, 0);
		MusicBackgroundPlay(oArea);
	}
	else {
		MusicBackgroundStop(oArea);
		MusicBackgroundChangeDay(oArea, 18, 0);
		MusicBackgroundChangeNight(oArea, 18, 0);
		MusicBackgroundPlay(oArea);
	}
}

