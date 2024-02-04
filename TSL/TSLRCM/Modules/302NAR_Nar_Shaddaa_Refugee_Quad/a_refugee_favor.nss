void main() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("302NAR_Refugee_Favor");
	SetGlobalNumber("302NAR_Refugee_Favor", (nGlobal + nParam1));
	if ((nParam1 == 0)) {
		SetGlobalNumber("302NAR_Refugee_Favor", 10);
	}
}