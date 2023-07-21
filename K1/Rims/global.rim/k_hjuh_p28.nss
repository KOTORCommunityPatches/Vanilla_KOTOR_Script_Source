int StartingConditional() {
	string sName = GetName(GetArea(OBJECT_SELF));
	if (((sName == "unk_m44aa") || (sName == "unk_m44ab"))) {
		return 1;
	}
	return 0;
}

