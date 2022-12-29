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
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", oSta_45darthMalak, 1);
	string sName = GetName(oNearestSta_malak_drain);
	int int1 = StringToInt(sName);
	object oNearestSta_malak_facing = GetNearestObjectByTag("sta_malak_facing", oSta_45darthMalak, 1);
	location location1 = GetLocation(oNearestSta_malak_facing);
	int int3;
	int int4;
	int int5;
	int int6;
	int int7;
	object object7;
	int3 = 102;
	int4 = 108;
	int5 = 103;
	int6 = 104;
	int7 = 107;
	sub1(18.0);
	SetDialogPlaceableCamera(int3);
	AssignCommand(oSta_45darthMalak, ClearAllActions());
	AssignCommand(oSta_45darthMalak, JumpToLocation(location1));
	DelayCommand(3.0, AssignCommand(oSta_45darthMalak, SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(3.0, SetDialogPlaceableCamera(int4));
	DelayCommand(6.0, SetDialogPlaceableCamera(int5));
	DelayCommand(9.0, SetDialogPlaceableCamera(int6));
	DelayCommand(12.0, SetDialogPlaceableCamera(int7));
}
