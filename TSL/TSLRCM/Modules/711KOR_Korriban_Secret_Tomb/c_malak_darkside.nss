int StartingConditional() {
	int int1;
	int int2 = 51;
	while ((int2 <= 53)) {
		if (GetLocalBoolean(OBJECT_SELF, int2)) {
			(int1++);
		}
		(int2++);
	}
	if ((int1 > 1)) {
		return 1;
	}
	return 0;
}