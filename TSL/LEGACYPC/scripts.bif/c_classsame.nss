int StartingConditional() {
	int int1;
	int int2;
	int1 = 1;
	while ((int1 < 3)) {
		int2 = GetClassByPosition(int1, GetPCSpeaker());
		if ((GetLevelByClass(int2, OBJECT_SELF) > 0)) {
			return 1;
		}
		(int1++);
	}
	return 0;
}

