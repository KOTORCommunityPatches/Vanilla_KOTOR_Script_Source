void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalBoolean("207TEL_Ramana_Bought", 1);
		StartNewModule("203TEL", "from_207TEL", "", "", "", "", "", "");
	}
}
