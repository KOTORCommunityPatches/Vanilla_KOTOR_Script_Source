int StartingConditional() {
	object object1 = OBJECT_SELF;
	object oBodyItem = GetItemInSlot(1, object1);
	if (GetIsObjectValid(oBodyItem)) {
		return 0;
	}
	return 1;
}

