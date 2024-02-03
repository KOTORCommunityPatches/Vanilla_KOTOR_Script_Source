// Prototypes
int sub2();
int sub1();

int sub2() {
	return ((GetBaseItemType(GetItemInSlot(4, GetFirstPC())) != 8) || (GetBaseItemType(GetItemInSlot(4, GetFirstPC())) != 10));
}

int sub1() {
	int int1 = 0;
	int nItemType;
	object oInvItem = GetFirstItemInInventory(GetFirstPC());
	while (GetIsObjectValid(oInvItem)) {
		nItemType = GetBaseItemType(oInvItem);
		if ((((nItemType == 8) || (nItemType == 9)) || (nItemType == 10))) {
			int1 = 1;
			break;
		}
		oInvItem = GetNextItemInInventory(GetFirstPC());
	}
	if ((int1 != 1)) {
		object oLWeapItem = GetItemInSlot(5, GetFirstPC());
		object oRWeapItem = GetItemInSlot(4, GetFirstPC());
		while (GetIsObjectValid(oLWeapItem)) {
			nItemType = GetBaseItemType(oInvItem);
			if ((((nItemType == 8) || (nItemType == 9)) || (nItemType == 10))) {
				int1 = 1;
				break;
			}
		}
		while (GetIsObjectValid(oRWeapItem)) {
			nItemType = GetBaseItemType(oInvItem);
			if ((((nItemType == 8) || (nItemType == 9)) || (nItemType == 10))) {
				int1 = 1;
				break;
			}
		}
	}
	return int1;
}

int StartingConditional() {
	return (sub1() && sub2());
}

