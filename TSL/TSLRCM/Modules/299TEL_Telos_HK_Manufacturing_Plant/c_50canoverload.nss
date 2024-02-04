int StartingConditional() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return 0;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return 0;
	}
	return 1;
}