// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

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
	int int1 = (((GetGlobalNumber("371NAR_SWOOP_B_MIN") * 6000) + (GetGlobalNumber("371NAR_SWOOP_B_SEC") * 100)) + GetGlobalNumber("371NAR_SWOOP_B_MSEC"));
	sub2(54, int1);
	SetCustomToken(55, "00:00:0000");
	object oModo = GetObjectByTag("Modo", 0);
	if ((!GetLocalBoolean(oModo, 50))) {
		return;
	}
	int int6 = (((GetGlobalNumber("371NAR_SWOOP_MIN") * 6000) + (GetGlobalNumber("371NAR_SWOOP_SEC") * 100)) + GetGlobalNumber("371NAR_SWOOP_MSEC"));
	sub2(55, int6);
	if (((((GetGlobalNumber("371NAR_SWOOP_MIN") == 59) && (GetGlobalNumber("371NAR_SWOOP_SEC") == 59)) && (GetGlobalNumber("371NAR_SWOOP_MSEC") == 99)) || GetGlobalBoolean("FORFEIT_SWOOPRACE"))) {
		SetLocalBoolean(oModo, 28, 1);
		return;
	}
	if (((int6 < int1) || (int1 == 0))) {
		int1 = int6;
		SetGlobalNumber("371NAR_SWOOP_B_MIN", GetGlobalNumber("371NAR_SWOOP_MIN"));
		SetGlobalNumber("371NAR_SWOOP_B_SEC", GetGlobalNumber("371NAR_SWOOP_SEC"));
		SetGlobalNumber("371NAR_SWOOP_B_MSEC", GetGlobalNumber("371NAR_SWOOP_MSEC"));
		sub2(54, int1);
		SetLocalBoolean(oModo, 52, 1);
	}
	else {
		SetLocalBoolean(oModo, 52, 0);
	}
	if (GetLocalBoolean(oModo, 40)) {
		int int18;
		if ((int6 < 10000)) {
			SetLocalBoolean(oModo, 32, 1);
			int18 = (int6 + Random(1200));
			sub2(51, int18);
		}
		else {
			SetLocalBoolean(oModo, 31, 1);
			if ((int6 < 12000)) {
				int18 = (10000 - Random(1400));
			}
			else {
				int18 = (12000 - Random(1400));
			}
			sub2(52, int18);
		}
	}
	else {
		int int22;
		SetLocalBoolean(oModo, 30, 1);
		if ((int6 < 7000)) {
			int22 = (int6 - Random(500));
		}
		else {
			if ((int1 < 7000)) {
				int22 = (int1 - Random(500));
			}
			else {
				int22 = (7000 - Random(1200));
			}
		}
		sub2(50, int22);
	}
	SetGlobalNumber("371NAR_SWOOP_MIN", 0);
	SetGlobalNumber("371NAR_SWOOP_SEC", 0);
	SetGlobalNumber("371NAR_SWOOP_MSEC", 0);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((((((GetObjectByTag("lndspdr003", 0) == OBJECT_INVALID) && GetGlobalNumber("302NAR_Airspeeder_41")) && GetGlobalNumber("302NAR_Airspeeder_42")) && GetGlobalNumber("302NAR_Airspeeder_43")) && (GetGlobalNumber("302NAR_Airspeeder_44") == 2))) {
			CreateObject(64, "lndspdr003", GetLocation(GetObjectByTag("wp_airtaxi", 0)), 0);
		}
		object oBik = GetObjectByTag("bik", 0);
		if (GetIsObjectValid(oBik)) {
			SetOrientOnClick(OBJECT_SELF, 0);
			AssignCommand(oBik, ActionPlayAnimation(30, 1.0, (-1.0)));
		}
		if (GetGlobalBoolean("300NAR_From_MiraApt")) {
			AurPostString("from Mira's Apt", 9, 9, 3.0);
			DestroyObject(GetObjectByTag("Vossk", 0), 0.0, 0, 0.0, 0);
			SetAreaUnescapable(0);
			object oDuros = GetObjectByTag("Duros", 0);
			SetGlobalBoolean("300NAR_From_MiraApt", 0);
			DelayCommand(0.1, AssignCommand(oDuros, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		sub1();
	}
}
