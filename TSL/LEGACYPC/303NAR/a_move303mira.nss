struct structtype1 {
	float float1;
	float float3;
};

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
	int nParam1 = GetScriptParameter(1);
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oMira = GetObjectByTag("Mira", 0);
	if ((nParam1 == 1)) {
		DelayCommand(0.5, AssignCommand(oHanharr, ActionForceMoveToObject(GetObjectByTag("WP_303MIRA_HANHARR_1", 0), 0, 1.0, 30.0)));
	}
	if ((nParam1 == 2)) {
		DelayCommand(0.5, AssignCommand(oMira, ActionForceMoveToObject(GetObjectByTag("WP_303MIRA_MIRA_1", 0), 0, 1.0, 30.0)));
		DelayCommand(0.5, AssignCommand(oHanharr, ActionDoCommand(AssignCommand(oMira, SetFacingPoint(GetPosition(oHanharr))))));
	}
	if ((nParam1 == 3)) {
		DelayCommand(0.5, AssignCommand(oHanharr, ActionForceMoveToObject(GetObjectByTag("WP_303MIRA_MIRA_0", 0), 0, 1.0, 30.0)));
		DelayCommand(2.5, AssignCommand(oHanharr, ActionDoCommand(AssignCommand(oMira, SetFacingPoint(GetPosition(oHanharr))))));
		DelayCommand(2.5, AssignCommand(oHanharr, ActionDoCommand(SetFacingPoint(GetPosition(oMira)))));
	}
	if ((nParam1 == 4)) {
		DelayCommand(0.5, AssignCommand(oHanharr, ActionForceMoveToObject(GetObjectByTag("WP_303MIRA_HANHARR_0", 0), 0, 1.0, 30.0)));
	}
}

