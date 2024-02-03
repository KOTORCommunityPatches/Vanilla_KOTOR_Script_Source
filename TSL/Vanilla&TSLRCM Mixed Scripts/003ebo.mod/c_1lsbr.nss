int StartingConditional() {
	int nItemType = GetBaseItemType(GetItemInSlot(4, GetFirstPC()));
	int int3 = GetBaseItemType(GetItemInSlot(5, GetFirstPC()));
	return (((((nItemType == 8) || (nItemType == 9)) || (nItemType == 10)) || (int3 == 8)) || (int3 == 10));
}

