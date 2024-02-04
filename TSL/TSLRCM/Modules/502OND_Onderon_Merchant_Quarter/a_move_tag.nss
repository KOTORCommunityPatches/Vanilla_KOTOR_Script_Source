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

void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int nParam4 = GetScriptParameter(4);
	if ((sParam == "")) {
		sParam = GetTag(OBJECT_SELF);
	}
	string string4 = ("wp_" + sParam);
	object object1 = GetObjectByTag(sParam, nParam3);
	if (nParam4) {
		DelayCommand(IntToFloat(nParam2), ActionDoCommand(SetCommandable(1, object1)));
	}
	DelayCommand(IntToFloat(nParam2), AssignCommand(object1, ActionForceMoveToObject(GetObjectByTag(string4, 0), nParam1, 1.0, 30.0)));
	if (nParam4) {
		DelayCommand(IntToFloat(nParam2), SetCommandable(0, object1));
	}
}