// Globals
	float floatGLOB_1 = 114.0;

void main() {
	int int1 = GetGlobalBoolean("505OND_Timer_Started");
	if (((GetTimeHour() < 24) && (!int1))) {
		SetGlobalNumber("MIN_TIME_MIL", (GetTimeMillisecond() / 10));
		SetGlobalNumber("MIN_TIME_SEC", GetTimeSecond());
		SetGlobalNumber("MIN_TIME_MIN", GetTimeMinute());
		SetGlobalNumber("MIN_TIME_HOUR", GetTimeHour());
		SetGlobalBoolean("505OND_Timer_Started", 1);
		int1 = 1;
	}
	if (int1) {
		int nGlobal = GetGlobalNumber("MIN_TIME_MIL");
		int int10 = GetGlobalNumber("MIN_TIME_SEC");
		int int12 = GetGlobalNumber("MIN_TIME_MIN");
		int int14 = GetGlobalNumber("MIN_TIME_HOUR");
		int int16 = (GetTimeMillisecond() / 10);
		int int18 = GetTimeSecond();
		int int20 = GetTimeMinute();
		int int22 = GetTimeHour();
		float float1 = 0.0;
		float1 = (float1 + ((((nGlobal / 100.0) + int10) + (int12 * 60)) + ((int14 * 2) * 60)));
		float float2 = 0.0;
		if ((int22 < int14)) {
			int22 = (int22 + 24);
		}
		float2 = (float2 + ((((int16 / 100.0) + int18) + (int20 * 60)) + ((int22 * 2) * 60)));
		float float3 = (float2 - float1);
		if ((float3 > floatGLOB_1)) {
			SetGlobalBoolean("505OND_Turret_Done", 1);
		}
	}
	int int24 = GetGlobalBoolean("505OND_Turret_Done");
	if (int24) {
		SetGlobalBoolean("505OND_Turret_Done", 0);
		int int26 = GetGlobalNumber("505OND_Dead_Enemies");
		GiveXPToCreature(GetFirstPC(), (100 * int26));
		StartNewModule("504OND", "From_505OND", "", "", "", "", "", "");
	}
}
