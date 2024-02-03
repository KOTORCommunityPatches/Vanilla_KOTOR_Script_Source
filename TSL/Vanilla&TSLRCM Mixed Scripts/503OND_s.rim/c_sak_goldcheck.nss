int StartingConditional() {
	if ((GetLocalBoolean(OBJECT_SELF, 52) && (GetGold(GetFirstPC()) < 5000))) {
		return 0;
	}
	if ((GetLocalBoolean(OBJECT_SELF, 51) && (!GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "w_melee_17"))))) {
		return 0;
	}
	if ((GetLocalBoolean(OBJECT_SELF, 53) && (!GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "u_l_crys_21x"))))) {
		return 0;
	}
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return 1;
	}
	return 0;
}

