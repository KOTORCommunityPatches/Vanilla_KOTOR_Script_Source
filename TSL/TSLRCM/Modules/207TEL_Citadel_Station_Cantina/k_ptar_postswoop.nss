// Prototypes
void sub2();
int sub1(int intParam1, int intParam2, int intParam3);

void sub2() {
	int nGlobal;
	int int2;
	int int3;
	nGlobal = GetGlobalNumber("TAR_SWOOP_MIN");
	int2 = GetGlobalNumber("TAR_SWOOP_SEC");
	int3 = GetGlobalNumber("TAR_SWOOP_MSEC");
	int3 = (int3 - 25);
	if ((int3 < 0)) {
		int2 = (int2 - 1);
		int3 = (int3 + 100);
	}
	if ((int2 < 0)) {
		nGlobal = (nGlobal - 1);
		int2 = (int2 + 60);
	}
	if (((nGlobal <= 0) && (int2 < 22))) {
		nGlobal = 0;
		int2 = 30;
		int3 = 0;
	}
	SetGlobalNumber("TAR_SWOOP_MIN_BEAT", nGlobal);
	SetGlobalNumber("TAR_SWOOP_SEC_BEAT", int2);
	SetGlobalNumber("TAR_SWOOP_MSEC_BEAT", int3);
	SetCustomToken(30, ((((IntToString(nGlobal) + ":") + IntToString(int2)) + ":") + IntToString(int3)));
}

int sub1(int intParam1, int intParam2, int intParam3) {
	return (((intParam1 * 10000) + (intParam2 * 100)) + intParam3);
}

void main() {
	if (GetGlobalBoolean("211TEL_Swoop_Run")) {
		SetGlobalBoolean("211TEL_Swoop_Run", 0);
		if ((sub1(GetGlobalNumber("211TEL_SWOOP_MIN"), GetGlobalNumber("211TEL_SWOOP_SEC"), GetGlobalNumber("211TEL_SWOOP_MSEC")) < sub1(GetGlobalNumber("TAR_SWOOP_MIN_BEAT"), GetGlobalNumber("TAR_SWOOP_SEC_BEAT"), GetGlobalNumber("TAR_SWOOP_MSEC_BEAT")))) {
			SetGlobalNumber("Tar_SwoopStatus", 2);
			sub2();
		}
		else {
			SetGlobalNumber("Tar_SwoopStatus", 1);
		}
		SetGlobalNumber("TAR_SWOOP_ACCEL", (GetGlobalNumber("TAR_SWOOP_ACCEL") + 1));
		if (((GetGlobalNumber("Tar_SwoopRaceCounter") == 5) && (GetGlobalNumber("Tar_SwoopStatus") == 1))) {
			DelayCommand(1.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), GetFirstPC(), 0.0));
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			AssignCommand(GetObjectByTag("tar03_Mechanic", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}