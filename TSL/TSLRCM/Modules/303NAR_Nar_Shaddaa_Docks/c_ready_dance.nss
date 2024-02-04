int StartingConditional() {
	if ((((GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "DancersOutfit")) || GetIsObjectValid(GetItemPossessedBy(GetPartyMemberByIndex(0), "DancersOutfit"))) || GetIsObjectValid(GetItemPossessedBy(GetPartyMemberByIndex(1), "DancersOutfit"))) || GetIsObjectValid(GetItemPossessedBy(GetPartyMemberByIndex(2), "DancersOutfit")))) {
		return 1;
	}
	else {
		return 0;
	}
}