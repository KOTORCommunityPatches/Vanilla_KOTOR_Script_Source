// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	string sParam = GetScriptStringParameter();
	int int3 = 0;
	switch (nParam1) {
		case 0:
			if ((GetGlobalNumber("900MAL_Open") != 1)) {
				int3 = 1;
			}
			break;
		case 1:
			if ((GetGlobalNumber("262TEL_Escape_Telos") == 1)) {
				int3 = 1;
			}
			break;
		case 2:
			if (((GetGlobalNumber("262TEL_Escape_Telos") == 1) && (GetGlobalNumber("401DXN_Visisted") != 1))) {
				int3 = 1;
			}
			break;
		case 3:
			if (((GetGlobalNumber("262TEL_Escape_Telos") == 1) && (GetGlobalNumber("401DXN_Visisted") == 1))) {
				int3 = 1;
			}
			break;
		case 4:
			if ((GetGlobalNumber("262TEL_Escape_Telos") == 1)) {
				int3 = 1;
			}
			break;
		case 5:
			if (((GetGlobalNumber("262TEL_Escape_Telos") == 1) && (GetGlobalNumber("401DXN_Visisted") == 1))) {
				int3 = 1;
			}
			break;
		case 6:
			if ((GetGlobalNumber("262TEL_Escape_Telos") == 1)) {
				int3 = 1;
			}
			break;
		case 7:
			return 0;
			break;
		case 8:
			if ((GetGlobalNumber("900MAL_Open") == 1)) {
				int3 = 1;
			}
			break;
	}
	return int3;
}
