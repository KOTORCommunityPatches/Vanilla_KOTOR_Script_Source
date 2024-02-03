// Prototypes
int sub3();
int sub2();
int sub1();

int sub3() {
	int int1 = 0;
	int nItemType;
	object oInvItem = GetFirstItemInInventory(GetFirstPC());
	while (GetIsObjectValid(oInvItem)) {
		nItemType = GetBaseItemType(oInvItem);
		if (((nItemType == 8) || (nItemType == 10))) {
			int1 = 1;
			break;
		}
		oInvItem = GetNextItemInInventory(GetFirstPC());
	}
	if ((int1 != 1)) {
		object oLWeapItem = GetItemInSlot(5, GetFirstPC());
		while (GetIsObjectValid(oLWeapItem)) {
			oInvItem = GetItemInSlot(5, GetFirstPC());
			if (GetIsObjectValid(oInvItem)) {
				nItemType = GetBaseItemType(oInvItem);
				if (((nItemType == 8) || (nItemType == 10))) {
					int1 = 1;
					break;
				}
			}
		}
	}
	return int1;
}

int sub2() {
	return ((GetBaseItemType(GetItemInSlot(4, GetFirstPC())) == 8) || (GetBaseItemType(GetItemInSlot(4, GetFirstPC())) == 10));
}

int sub1() {
	return (((GetBaseItemType(GetItemInSlot(4, GetObjectByTag("VisasMarr", 0))) == 8) || (GetBaseItemType(GetItemInSlot(4, GetObjectByTag("VisasMarr", 0))) == 9)) || (GetBaseItemType(GetItemInSlot(4, GetObjectByTag("VisasMarr", 0))) == 10));
}

int StartingConditional() {
	return (((IsAvailableCreature(9) && sub1()) && sub2()) && sub3());
}

