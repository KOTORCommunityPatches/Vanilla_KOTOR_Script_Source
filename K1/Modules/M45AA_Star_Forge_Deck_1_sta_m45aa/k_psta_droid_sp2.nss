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
void sub1(string stringParam1, string stringParam2, int intParam3, float floatParam4, int intParam5);

void sub1(string stringParam1, string stringParam2, int intParam3, float floatParam4, int intParam5) {
	if ((floatParam4 < 1.5)) {
		floatParam4 = 1.5;
	}
	{
		object oWP = GetWaypointByTag(stringParam2);
		object object3;
		if (GetIsObjectValid(oWP)) {
		int int2 = intParam5;
			int2;
		while ((int2 != 0)) {
			object3 = CreateObject(1, stringParam1, GetLocation(oWP), 0);
			(int2--);
		}
			(intParam3--);
		if ((intParam3 > 0)) {
			DelayCommand(floatParam4, sub1(stringParam1, stringParam2, intParam3, floatParam4, intParam5));
		}
		floatParam4 = (floatParam4 + floatParam4);
		}
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		sub1("sta45a_assaul002", "STA_DROID3_WP", 1, 1.5, 1);
		sub1("sta45a_assaul002", "STA_DROID4_WP", 1, 1.5, 1);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}