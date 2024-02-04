// Prototypes
int sub1();

int sub1() {
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

int StartingConditional() {
	return (!sub1());
}