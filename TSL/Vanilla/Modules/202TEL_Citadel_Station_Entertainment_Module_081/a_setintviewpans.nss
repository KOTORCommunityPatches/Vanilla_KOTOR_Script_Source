void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam1 == 1)) {
		IncrementGlobalNumber("202TEL_Interview", 1);
	}
	if ((nParam1 == (-1))) {
		IncrementGlobalNumber("202TEL_Interview", (-1));
	}
	if ((nParam2 == 0)) {
		SetGlobalNumber("202TEL_Interview", nParam2);
	}
}
