int StartingConditional() {
	if (GetLocalBoolean(OBJECT_SELF, 45)) {
		SetLocalBoolean(OBJECT_SELF, 45, 0);
		return 1;
	}
	else {
		return 0;
	}
}
