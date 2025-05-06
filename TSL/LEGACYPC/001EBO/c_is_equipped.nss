int StartingConditional() {
	AurPostString("c_is_equipped triggered", 5, 5, 5.0);
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	if (GetIsObjectValid(oRWeapItem)) {
		AurPostString("c_is_equipped is TRUE", 5, 6, 5.0);
		return 1;
	}
	return 0;
}

