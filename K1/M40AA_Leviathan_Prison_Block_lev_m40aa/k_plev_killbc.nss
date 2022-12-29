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
void sub2(object objectParam1, object objectParam2);
void sub1(object objectParam1);

void sub2(object objectParam1, object objectParam2) {
	object oInvItem;
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(10, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(1, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(3, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(0, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(9, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(7, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(5, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(8, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(4, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	oInvItem = GetFirstItemInInventory(objectParam1);
	while (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, objectParam2);
		oInvItem = GetFirstItemInInventory(objectParam1);
	}
}

void sub1(object objectParam1) {
	object oLev40_ptylocker = GetObjectByTag("lev40_ptylocker", 0);
	ClearAllActions();
	ActionJumpToObject(objectParam1, 0);
	sub2(OBJECT_SELF, oLev40_ptylocker);
}

void main() {
	object oLev40_ptylocker = GetObjectByTag("lev40_ptylocker", 0);
	object oNPC;
	int int1;
	DestroyObject(GetObjectByTag("bastila", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("carth", 0), 0.0, 1, 0.0);
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		SetCommandable(1, oNPC);
		if ((int1 == 1)) {
			AssignCommand(oNPC, sub1(GetObjectByTag("lev40_wpequiproom", 0)));
		}
		else {
			if ((int1 == 2)) {
				AssignCommand(oNPC, sub1(GetObjectByTag("lev40_wpequiprooma", 0)));
			}
		}
		(int1++);
	}
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}
