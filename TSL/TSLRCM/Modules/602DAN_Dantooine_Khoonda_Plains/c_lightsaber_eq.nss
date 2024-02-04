int StartingConditional() {
	object oRWeapItem = GetItemInSlot(4, GetPartyLeader());
	if ((FindSubString(GetName(oRWeapItem), "Lightsaber") != (-1))) {
		return 1;
	}
	return 0;
}