void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		nParam1 = 6;
	}
	int nRandom = Random(nParam1);
	int nGlobal = GetGlobalNumber("302NAR_Random_Talk");
	if ((nRandom == nGlobal)) {
		nRandom = (nRandom + 1);
	}
	SetGlobalNumber("302NAR_Random_Talk", nRandom);
}

