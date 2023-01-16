void main() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("602DAN_Gerevick");
	switch (nParam1) {
		case 0:
			if ((!nGlobal)) {
				SetGlobalNumber("602DAN_Gerevick", 1);
			}
			break;
		case 1:
			SetGlobalNumber("602DAN_Gerevick", 2);
			break;
		case 2:
			SetGlobalNumber("602DAN_Gerevick", 3);
			break;
	}
}

