void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		StartNewModule("203TEL", "from_207TEL", "", "", "", "", "", "");
	}
}
