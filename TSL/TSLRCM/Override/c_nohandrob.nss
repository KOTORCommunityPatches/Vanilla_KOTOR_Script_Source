int StartingConditional() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "a_robe_x01");
	return ((GetModuleName() == "003EBO") && (!GetIsObjectValid(object1)));
}