struct structtype1 {
	float float1;
	float float3;
};

// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;

int StartingConditional() {
	float float1 = 35.0;
	float float2 = 60.0;
	float float3 = 100.0;
	float float4 = 150.0;
	float float5 = 210.0;
	float float6;
	int int1;
	float float7;
	float float8;
	float float9;
	float float10;
	float float11;
	string string1;
	string string2;
	string string3;
	string string4;
	string string5;
	string string6;
	string string7;
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	float float12 = IntToFloat(GetGlobalNumber("MIN_TENTH_GEAR"));
	object oGo;
	if (((GetTimeHour() < 24) && (nGlobal == (-5)))) {
		SetGlobalNumber("MIN_TIME_MIL", (GetTimeMillisecond() / 10));
		SetGlobalNumber("MIN_TIME_SEC", GetTimeSecond());
		SetGlobalNumber("MIN_TIME_MIN", GetTimeMinute());
		SetGlobalNumber("MIN_TIME_HOUR", GetTimeHour());
		nGlobal = (-4);
		SetGlobalNumber("MIN_RACE_GEAR", nGlobal);
	}
	int int10 = GetGlobalNumber("MIN_TIME_MIL");
	int int12 = GetGlobalNumber("MIN_TIME_SEC");
	int int14 = GetGlobalNumber("MIN_TIME_MIN");
	int int16 = GetGlobalNumber("MIN_TIME_HOUR");
	int int18 = GetGlobalNumber("MIN_RACE_LAP");
	int int20 = (GetTimeMillisecond() / 10);
	int int22 = GetTimeSecond();
	int int24 = GetTimeMinute();
	int int26 = GetTimeHour();
	float float14 = 0.0;
	float14 = (float14 + ((((int10 / 100.0) + int12) + (int14 * 60)) + ((int16 * 2) * 60)));
	float float15 = 0.0;
	if ((int26 < int16)) {
		int26 = (int26 + 24);
	}
	float15 = (float15 + ((((int20 / 100.0) + int22) + (int24 * 60)) + ((int26 * 2) * 60)));
	float float16 = (float15 - float14);
	float6 = SWMG_GetPlayerSpeed();
	oGo = GetObjectByTag("Wind", 0);
	int int28 = FloatToInt((float6 / 4.0));
	SoundObjectSetVolume(oGo, int28);
	if ((nGlobal < 0)) {
		if (((float16 > 0.1) && (nGlobal == (-4)))) {
			SWMG_PlayAnimation(OBJECT_SELF, "S3", 0, 0, 1);
			SetGlobalNumber("MIN_RACE_GEAR", (-3));
			oGo = GetObjectByTag("PowerUp", 0);
			SoundObjectPlay(oGo);
			oGo = GetObjectByTag("Idle", 0);
			SoundObjectPlay(oGo);
		}
		if (((float16 > 3.0) && (nGlobal == (-3)))) {
			oGo = GetObjectByTag("S1", 0);
			SoundObjectPlay(oGo);
			SWMG_PlayAnimation(OBJECT_SELF, "S2", 0, 0, 1);
			SetGlobalNumber("MIN_RACE_GEAR", (-2));
		}
		if (((float16 > 4.0) && (nGlobal == (-2)))) {
			oGo = GetObjectByTag("S1", 0);
			SoundObjectPlay(oGo);
			SWMG_PlayAnimation(OBJECT_SELF, "S1", 0, 0, 1);
			SetGlobalNumber("MIN_RACE_GEAR", (-1));
		}
		if (((float16 > 5.0) && (nGlobal == (-1)))) {
			oGo = GetObjectByTag("Go", 0);
			SoundObjectPlay(oGo);
			SWMG_PlayAnimation(OBJECT_SELF, "SGo", 0, 0, 1);
			SetGlobalNumber("MIN_TIME_MIL", (GetTimeMillisecond() / 10));
			SetGlobalNumber("MIN_TIME_SEC", GetTimeSecond());
			SetGlobalNumber("MIN_TIME_MIN", GetTimeMinute());
			SetGlobalNumber("MIN_TIME_HOUR", GetTimeHour());
			SetGlobalNumber("MIN_RACE_GEAR", 0);
		}
		return 0;
	}
	if (((float16 > 1.0) && (nGlobal >= 1))) {
		SetLocalNumber(GetObjectByTag("racedialog", 0), 12, 1);
	}
	float float18;
	struct structtype1 struct1 = SWMG_GetPosition(OBJECT_SELF);
}

