void main() {
	int nParam1 = GetScriptParameter(1);
	object object1 = GetItemPossessedBy(GetFirstPC(), "g_i_evap_mod");
	ActionTakeItem(object1, GetFirstPC());
	if ((nParam1 == 1)) {
		TakeGoldFromCreature(500, GetFirstPC(), 0);
	}
}

