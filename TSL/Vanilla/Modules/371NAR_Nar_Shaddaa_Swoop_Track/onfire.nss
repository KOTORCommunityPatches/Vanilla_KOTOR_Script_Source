// Byte code does not match

int StartingConditional() {
	int int1 = 0;
	int int2 = 0;
	float float1 = 35.0;
	float float2 = 60.0;
	float float3 = 100.0;
	float float4 = 150.0;
	float float5 = 210.0;
	float float6 = 20.0;
	float float7 = 8.0;
	float float8 = 6.0;
	float float9 = 3.0;
	float float10 = 2.0;
	object oEngine05;
	int1 = SWMG_GetSwoopUpgrade(0);
	int2 = SWMG_GetSwoopUpgrade(1);
	float float11 = (1.0 + (IntToFloat(int1) * 0.2));
	float float13 = (1.0 + (0.5 * IntToFloat(int2)));
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	float float15 = SWMG_GetPlayerSpeed();
	int int7 = nGlobal;
	vector struct2 = SWMG_GetPosition(OBJECT_SELF);
	float float20 = struct2.y;
	if ((float20 > 3800.0)) {
		return 0;
	}
	if ((nGlobal == (-1))) {
		oEngine05 = GetObjectByTag("Penalty", 0);
		SoundObjectPlay(oEngine05);
	}
	else {
		if ((nGlobal == 0)) {
			nGlobal = (nGlobal + 1);
			SWMG_SetPlayerMinSpeed((float1 * float11));
			SWMG_SetPlayerMaxSpeed(((float1 * 2) * float11));
			SWMG_SetPlayerAccelerationPerSecond((float6 * float13));
			vector struct3;
			struct3.x = (-20.0);
			struct3.y = (-5000.0);
			struct3.z = 0.0;
			SWMG_SetPlayerTunnelPos([50.0,5000.0,20.0]);
			SWMG_SetPlayerTunnelNeg(struct3);
		}
		else {
			if ((nGlobal == 1)) {
				if ((float15 > float2)) {
					nGlobal = (nGlobal + 1);
					SWMG_SetPlayerMinSpeed((float2 * float11));
					SWMG_SetPlayerMaxSpeed(((float2 * 2) * float11));
					SWMG_SetPlayerAccelerationPerSecond((float7 * float13));
				}
			}
			else {
				if ((nGlobal == 2)) {
					if ((float15 > float3)) {
						nGlobal = (nGlobal + 1);
						SWMG_SetPlayerMinSpeed((float3 * float11));
						SWMG_SetPlayerMaxSpeed(((float3 * 1.9) * float11));
						SWMG_SetPlayerAccelerationPerSecond(((float8 * float13) * float13));
					}
				}
				else {
					if ((nGlobal == 3)) {
						if ((float15 > float4)) {
							nGlobal = (nGlobal + 1);
							SWMG_SetPlayerMinSpeed((float4 * float11));
							SWMG_SetPlayerMaxSpeed(((float4 * 1.5) * float11));
							SWMG_SetPlayerAccelerationPerSecond(((float9 * float13) * float13));
						}
					}
					else {
						if ((nGlobal == 4)) {
							if ((float15 > float5)) {
								nGlobal = (nGlobal + 1);
								SWMG_SetPlayerMinSpeed((float5 * float11));
								SWMG_SetPlayerMaxSpeed(((float5 * 2) * float11));
								SWMG_SetPlayerAccelerationPerSecond(((float10 * float13) * float13));
							}
						}
					}
				}
			}
		}
	}
	SetGlobalNumber("MIN_RACE_GEAR", nGlobal);
	if ((int7 != nGlobal)) {
		if ((nGlobal == 1)) {
			oEngine05 = GetObjectByTag("Idle", 0);
			SoundObjectFadeAndStop(oEngine05, 0.5);
			oEngine05 = GetObjectByTag("Shift1", 0);
			SoundObjectPlay(oEngine05);
			oEngine05 = GetObjectByTag("Engine01", 0);
			SoundObjectPlay(oEngine05);
			SWMG_PlayAnimation(OBJECT_SELF, "gear1", 0, 0, 1);
			SWMG_PlayAnimation(OBJECT_SELF, "gear1l", 1, 0, 1);
		}
		if ((nGlobal == 2)) {
			oEngine05 = GetObjectByTag("Engine01", 0);
			SoundObjectFadeAndStop(oEngine05, 0.5);
			oEngine05 = GetObjectByTag("Shift2", 0);
			SoundObjectPlay(oEngine05);
			oEngine05 = GetObjectByTag("Engine02", 0);
			SoundObjectPlay(oEngine05);
			SWMG_PlayAnimation(OBJECT_SELF, "gear2", 0, 0, 1);
			SWMG_PlayAnimation(OBJECT_SELF, "gear2l", 1, 0, 1);
		}
		if ((nGlobal == 3)) {
			oEngine05 = GetObjectByTag("Engine02", 0);
			SoundObjectFadeAndStop(oEngine05, 0.5);
			oEngine05 = GetObjectByTag("Shift3", 0);
			SoundObjectPlay(oEngine05);
			oEngine05 = GetObjectByTag("Engine03", 0);
			SoundObjectPlay(oEngine05);
			SWMG_PlayAnimation(OBJECT_SELF, "gear3", 0, 0, 1);
			SWMG_PlayAnimation(OBJECT_SELF, "gear3l", 1, 0, 1);
		}
		if ((nGlobal == 4)) {
			oEngine05 = GetObjectByTag("Engine03", 0);
			SoundObjectFadeAndStop(oEngine05, 0.5);
			oEngine05 = GetObjectByTag("Shift4", 0);
			SoundObjectPlay(oEngine05);
			oEngine05 = GetObjectByTag("Engine04", 0);
			SoundObjectPlay(oEngine05);
			SWMG_PlayAnimation(OBJECT_SELF, "gear4", 0, 0, 1);
			SWMG_PlayAnimation(OBJECT_SELF, "gear4l", 1, 0, 1);
		}
		if ((nGlobal == 5)) {
			oEngine05 = GetObjectByTag("Engine04", 0);
			SoundObjectFadeAndStop(oEngine05, 0.5);
			oEngine05 = GetObjectByTag("Shift5", 0);
			SoundObjectPlay(oEngine05);
			oEngine05 = GetObjectByTag("Engine05", 0);
			SoundObjectPlay(oEngine05);
			SWMG_PlayAnimation(OBJECT_SELF, "gear5", 0, 0, 1);
			SWMG_PlayAnimation(OBJECT_SELF, "gear5l", 1, 0, 1);
		}
	}
	return 0;
}
