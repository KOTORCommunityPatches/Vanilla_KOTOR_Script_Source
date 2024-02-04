void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalBoolean("203TEL_Chano_Destroy", 1);
		SetGlobalNumber("201TEL_Chano_Spawn", 1);
	}
	if ((nParam1 == 2)) {
		SetGlobalBoolean("203TEL_Chano_Destroy", 1);
		SetGlobalNumber("201TEL_Chano_Spawn", 2);
	}
}