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

// Prototypes
void sub1(int intParam1, int intParam2, object objectParam3);

void sub1(int intParam1, int intParam2, object objectParam3) {
	object oWP;
	if ((intParam2 == 0)) {
		oWP = GetWaypointByTag("SW_EXIT");
	}
	else {
		oWP = GetWaypointByTag(("SW_EXIT" + IntToString(intParam2)));
	}
	if ((objectParam3 != OBJECT_SELF)) {
		AssignCommand(objectParam3, ActionForceMoveToObject(oWP, intParam1, 1.0, 30.0));
		AssignCommand(objectParam3, ActionDoCommand(SetCommandable(1, OBJECT_SELF)));
		AssignCommand(objectParam3, ActionDoCommand(DestroyObject(objectParam3, 0.0, 0, 0.0, 0)));
		AssignCommand(objectParam3, SetCommandable(0, OBJECT_SELF));
	}
	else {
		ActionForceMoveToObject(oWP, intParam1, 1.0, 30.0);
		ActionDoCommand(SetCommandable(1, OBJECT_SELF));
		ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
		SetCommandable(0, OBJECT_SELF);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oAl_twilek;
	object oSw_exit3;
	switch (nParam1) {
		case 0:
			oAl_twilek = GetObjectByTag("al_gran", 0);
			AssignCommand(GetFirstPC(), ActionMoveToObject(oAl_twilek, 0, 2.0));
			break;
		case 1:
			oSw_exit3 = GetObjectByTag("sw_exit3", 0);
			oAl_twilek = GetObjectByTag("al_twilek", 0);
			DelayCommand(0.5, sub1(0, 3, oAl_twilek));
			oAl_twilek = GetObjectByTag("al_gran", 0);
			DelayCommand(2.1, sub1(0, 3, oAl_twilek));
			break;
	}
}