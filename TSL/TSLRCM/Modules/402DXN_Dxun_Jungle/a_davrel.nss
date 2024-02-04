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
	int nParam2 = GetScriptParameter(2);
	object oSw_exit1;
	switch (nParam1) {
		case 0:
			SetGlobalNumber("402DXN_Davrel_Fate", nParam2);
			break;
		case 1:
			oSw_exit1 = GetObjectByTag("sw_exit1", 0);
			ActionForceMoveToObject(oSw_exit1, 1, 1.0, 30.0);
			ActionDoCommand(SetCommandable(1, OBJECT_SELF));
			SetCommandable(0, OBJECT_SELF);
			break;
		case 2:
			DelayCommand(1.0, sub1(1, 0, OBJECT_SELF));
			break;
		case 3:
			ChangeToStandardFaction(OBJECT_SELF, 2);
			ActionMoveToObject(GetObjectByTag("wp_dav_zakk", 0), 1, 1.0);
			break;
		case 4:
			ChangeToStandardFaction(OBJECT_SELF, 5);
			sub1(1, 0, OBJECT_SELF);
			break;
	}
}