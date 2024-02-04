int StartingConditional() {
	object oInvItem = GetFirstItemInInventory(GetFirstPC());
	while (GetIsObjectValid(oInvItem)) {
		if ((GetTag(oInvItem) == "g_410demolitions")) {
			return 1;
		}
		oInvItem = GetNextItemInInventory(OBJECT_SELF);
	}
	return 0;
}