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
void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub2();
void sub1(int intParam1, location locationParam2);

void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub2() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	AddPartyMember(2, oCarth);
	AddPartyMember(0, oBastila);
	sub3("ADDED PARTY MEMBERS", 5, 5, 5.0);
}

void sub1(int intParam1, location locationParam2) {
	object object1 = SpawnAvailableNPC(intParam1, locationParam2);
}

void main() {
	object oLev40_wpequiproom = GetObjectByTag("lev40_wpequiproom", 0);
	object oLev40_wpequiprooma = GetObjectByTag("lev40_wpequiprooma", 0);
	object oLev40_wpequiproomb = GetObjectByTag("lev40_wpequiproomb", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oLev40_ptylocker = GetObjectByTag("lev40_ptylocker", 0);
	DestroyObject(oCarth, 0.0, 1, 0.0);
	DestroyObject(oBastila, 0.0, 1, 0.0);
	sub1(0, GetLocation(oLev40_wpequiproom));
	sub1(2, GetLocation(oLev40_wpequiprooma));
	DelayCommand(2.0, sub2());
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}
