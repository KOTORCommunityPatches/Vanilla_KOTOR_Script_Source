void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			SetGlobalNumber("610DAN_Jorran_Jerk", nParam2);
			break;
		case 1:
			SetGlobalNumber("610DAN_Jorran_Salvage", nParam2);
			break;
		case 2:
			SetGlobalNumber("610DAN_Jorran_Saved", 1);
			break;
	}
	if (((nParam1 == 0) && (nParam2 == 1))) {
		SetLocalBoolean(OBJECT_SELF, 50, 1);
	}
	AurPostString(((("Param1 set to " + IntToString(nParam1)) + "; Param2 set to ") + IntToString(nParam2)), 5, 5, 2.0);
}