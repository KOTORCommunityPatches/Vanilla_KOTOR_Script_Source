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
void sub1(object objectParam1, int intParam2);

void sub1(object objectParam1, int intParam2) {
	ActionForceMoveToObject(objectParam1, intParam2, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	object oTar02_wpdrunk3 = GetObjectByTag("tar02_wpnpcext", 0);
	object oDrunk023 = GetObjectByTag("drunk021", 0);
	oTar02_wpdrunk3 = GetObjectByTag("tar02_wpdrunk1", 0);
	SignalEvent(oDrunk023, EventUserDefined(4000));
	AssignCommand(oDrunk023, sub1(oTar02_wpdrunk3, 0));
	oDrunk023 = GetObjectByTag("drunk022", 0);
	oTar02_wpdrunk3 = GetObjectByTag("tar02_wpdrunk2", 0);
	SignalEvent(oDrunk023, EventUserDefined(4000));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("drunk022", 0), sub1(oTar02_wpdrunk3, 0)));
	oDrunk023 = GetObjectByTag("drunk023", 0);
	oTar02_wpdrunk3 = GetObjectByTag("tar02_wpdrunk3", 0);
	SignalEvent(oDrunk023, EventUserDefined(4000));
	DelayCommand(2.0, AssignCommand(GetObjectByTag("drunk023", 0), sub1(oTar02_wpdrunk3, 0)));
}