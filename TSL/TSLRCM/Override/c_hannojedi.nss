int StartingConditional() {
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	return ((GetClassByPosition(2, oHandmaiden) != 3) && (GetModuleName() == "003EBO"));
}