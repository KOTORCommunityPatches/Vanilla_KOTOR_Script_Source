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
	object oCantena_Band_01a = GetObjectByTag("Cantena_Band_01a", 0);
	if ((nParam1 == 1)) {
		SoundObjectFadeAndStop(oCantena_Band_01a, 1.0);
		DelayCommand(0.5, AssignCommand(oHanharr, ActionForceMoveToObject(GetObjectByTag("WP_HANHARR_VOGGA_1", 0), 0, 1.0, 30.0)));
	}
	if ((nParam1 == 2)) {
		DelayCommand(0.5, AssignCommand(oHanharr, ActionForceMoveToObject(GetObjectByTag("WP_HANHARR_VOGGA_2", 0), 0, 1.0, 30.0)));
		DelayCommand(2.0, AssignCommand(oHanharr, ActionPlayAnimation(19, 1.0, 0.0)));
	}
	if ((nParam1 == 3)) {
		AssignCommand(oHanharr, ClearAllActions());
		DelayCommand(0.5, AssignCommand(oHanharr, ActionForceMoveToObject(GetObjectByTag("WP_HANHARR_VOGGA_0", 0), 0, 1.0, 30.0)));
		DelayCommand(5.0, SoundObjectPlay(oCantena_Band_01a));
	}
}

