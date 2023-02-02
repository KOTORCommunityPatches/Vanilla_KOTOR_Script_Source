void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			SetLocalBoolean(OBJECT_SELF, 50, 0);
			SetLocalBoolean(OBJECT_SELF, 51, 0);
			SetLocalBoolean(OBJECT_SELF, 52, 0);
			break;
		case 1:
			break;
		case 2:
			SetGlobalNumber("602DAN_Thief_ID", nParam2);
			break;
	}
}
