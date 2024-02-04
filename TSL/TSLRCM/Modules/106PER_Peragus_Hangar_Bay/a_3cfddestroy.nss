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
	location location1 = GetLocation(objectParam1);
	effect efVisual = EffectVisualEffect(intParam2, 0);
	effect effect3 = EffectVisualEffect(1044, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	DelayCommand(0.1, ApplyEffectAtLocation(0, effect3, location1, 0.0));
	DelayCommand(0.1, DestroyObject(objectParam1, 0.0, 1, 0.0, 0));
}

void main() {
	object oBlastDoor = GetObjectByTag("BlastDoor", 0);
	object o3CFDBroke = GetObjectByTag("3CFDBroke", 0);
	object oCylinder1 = GetObjectByTag("Cylinder1", 0);
	object oCylinder2 = GetObjectByTag("Cylinder2", 0);
	if (GetIsObjectValid(o3CFDBroke)) {
		object oInvItem = GetFirstItemInInventory(oCylinder1);
		while (GetIsObjectValid(oInvItem)) {
			DestroyObject(oInvItem, 0.0, 0, 0.0, 0);
			oInvItem = GetNextItemInInventory(oCylinder1);
		}
		oInvItem = GetFirstItemInInventory(oCylinder2);
		while (GetIsObjectValid(oInvItem)) {
			DestroyObject(oInvItem, 0.0, 0, 0.0, 0);
			oInvItem = GetNextItemInInventory(oCylinder2);
		}
		DelayCommand(0.7, sub1(o3CFDBroke, 3003));
		DelayCommand(0.8, sub1(oCylinder1, 4034));
		DelayCommand(0.8, sub1(oCylinder2, 4034));
	}
	SetLocked(oBlastDoor, 0);
	DelayCommand(0.7, AssignCommand(oBlastDoor, ActionOpenDoor(oBlastDoor)));
}