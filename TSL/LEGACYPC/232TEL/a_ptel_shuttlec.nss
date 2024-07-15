void main() {
	int nGlobal = GetGlobalNumber("232TEL_Shuttle");
	if ((nGlobal == 0)) {
		SetGlobalNumber("232TEL_Shuttle", 1);
		return;
	}
	if ((nGlobal == 2)) {
		SetGlobalNumber("232TEL_Shuttle", 3);
		return;
	}
}

