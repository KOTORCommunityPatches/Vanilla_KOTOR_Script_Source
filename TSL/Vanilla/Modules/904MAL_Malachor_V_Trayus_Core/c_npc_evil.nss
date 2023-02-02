int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 50;
	int nAlign = GetGoodEvilValue(GetFirstPC());
	int int6 = GetInfluence(nParam1);
	switch (nParam1) {
		case 0:
			int3 = 50;
			break;
		case 2:
			int3 = 30;
			break;
		case 4:
			int3 = 62;
			break;
		case 7:
			int3 = 55;
			break;
		case 9:
			int3 = 35;
			break;
		case 11:
			int3 = 62;
			break;
	}
	float float1 = IntToFloat(nAlign);
	float float3 = ((float1 - 50.0) / 50.0);
	float float4 = IntToFloat(int3);
	float float6 = ((IntToFloat(int6) - 50.0) / 50.0);
	float float8 = (float3 * float6);
	float float9;
	if ((float8 <= 0.0)) {
		float9 = (float4 * (1.0 + float8));
	}
	else {
		float9 = (float4 + (float8 * (100.0 - float4)));
	}
	int int8 = FloatToInt(float9);
	if ((nParam1 == 2)) {
		AurPostString(("Apc: " + IntToString(FloatToInt(float1))), 10, 10, 5.0);
		AurPostString(("A: " + IntToString(FloatToInt((float3 * 100)))), 10, 11, 5.0);
		AurPostString(("I: " + IntToString(FloatToInt((float6 * 100)))), 10, 12, 5.0);
		AurPostString(("fFactor: " + IntToString(FloatToInt((float8 * 100)))), 10, 13, 5.0);
		AurPostString(("Abase: " + IntToString(FloatToInt(float4))), 10, 4, 5.0);
		AurPostString(("Align: " + IntToString(int8)), 10, 15, 5.0);
	}
	if ((int8 <= 40)) {
		return 1;
	}
	else {
		return 0;
	}
}
