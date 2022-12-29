// Byte code does not match

int StartingConditional() {
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
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	float float11 = SWMG_GetPlayerSpeed();
	int int3 = nGlobal;
	if ((nGlobal == (-1))) {
		oEngine05 = GetObjectByTag("Penalty", 0);
		SoundObjectPlay(oEngine05);
	}
	else {
		if ((nGlobal == 0)) {
			nGlobal = (nGlobal + 1);
			SWMG_SetPlayerMinSpeed(float1);
			SWMG_SetPlayerMaxSpeed((float1 * 2));
			SWMG_SetPlayerAccelerationPerSecond(float6);
			vector struct1;
			struct1.x = (-20.0);
			struct1.y = 0.0;
			struct1.z = 0.0;
			SWMG_SetPlayerTunnelPos([0.0,0.0,20.0]);
			SWMG_SetPlayerTunnelNeg(struct1);
		}
		else {
			if ((nGlobal == 1)) {
				if ((float11 > float2)) {
					nGlobal = (nGlobal + 1);
					SWMG_SetPlayerMinSpeed(float2);
					SWMG_SetPlayerMaxSpeed((float2 * 2));
					SWMG_SetPlayerAccelerationPerSecond(float7);
				}
			}
			else {
				if ((nGlobal == 2)) {
					if ((float11 > float3)) {
						nGlobal = (nGlobal + 1);
						SWMG_SetPlayerMinSpeed(float3);
						SWMG_SetPlayerMaxSpeed((float3 * 1.9));
						SWMG_SetPlayerAccelerationPerSecond(float8);
					}
				}
				else {
					if ((nGlobal == 3)) {
						if ((float11 > float4)) {
							nGlobal = (nGlobal + 1);
							SWMG_SetPlayerMinSpeed(float4);
							SWMG_SetPlayerMaxSpeed((float4 * 1.5));
							SWMG_SetPlayerAccelerationPerSecond(float9);
						}
					}
					else {
						if ((nGlobal == 4)) {
							if ((float11 > float5)) {
								nGlobal = (nGlobal + 1);
								SWMG_SetPlayerMinSpeed(float5);
								SWMG_SetPlayerMaxSpeed((float5 * 2));
								SWMG_SetPlayerAccelerationPerSecond(float10);
							}
						}
					}
				}
			}
		}
	}
	SetGlobalNumber("MIN_RACE_GEAR", nGlobal);
	if ((int3 != nGlobal)) {
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
