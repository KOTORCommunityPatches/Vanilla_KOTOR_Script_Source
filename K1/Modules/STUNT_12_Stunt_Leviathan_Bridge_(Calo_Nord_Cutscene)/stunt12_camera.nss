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

// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oStunt12_malak = GetObjectByTag("stunt12_malak", 0);
	object oStunt12_wp_04 = GetWaypointByTag("stunt12_wp_04");
	sub1(3.2);
	object oStunt12_sith2 = GetObjectByTag("stunt12_sith2", 0);
	DelayCommand(0.2, AssignCommand(oStunt12_sith2, PlayAnimation(5, 1.0, 3.0)));
	SetLockOrientationInDialog(oStunt12_malak, 1);
	DelayCommand(2.9, AssignCommand(oStunt12_malak, ActionMoveToObject(oStunt12_wp_04, 0, 1.0)));
	DelayCommand(1.7, SetDialogPlaceableCamera(9));
}
