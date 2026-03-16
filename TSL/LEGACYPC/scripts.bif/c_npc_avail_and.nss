int StartingConditional() {
	int int1 = (GetScriptParameter(1) + 1);
	int int3;
	int int4 = 0;
	int3 = 2;
	while ((int3 <= int1)) {
		int nParam = GetScriptParameter(int3);
		switch (nParam) {
			case 0:
				int4 = (int4 + IsAvailableCreature(0));
				break;
			case 1:
				int4 = (int4 + IsAvailableCreature(1));
				break;
			case 2:
				int4 = (int4 + IsAvailableCreature(2));
				break;
			case 3:
				int4 = (int4 + IsAvailableCreature(3));
				break;
			case 4:
				int4 = (int4 + IsAvailableCreature(4));
				break;
			case 5:
				int4 = (int4 + IsAvailableCreature(5));
				break;
			case 6:
				int4 = (int4 + IsAvailableCreature(6));
				break;
			case 7:
				int4 = (int4 + IsAvailableCreature(7));
				break;
			case 8:
				int4 = (int4 + IsAvailableCreature(8));
				break;
			case 9:
				int4 = (int4 + IsAvailableCreature(9));
				break;
			case 10:
				int4 = (int4 + IsAvailableCreature(10));
				break;
			case 11:
				int4 = (int4 + IsAvailableCreature(11));
				break;
		}
		(int3++);
	}
	if (((int4 + 1) == int1)) {
		return 1;
	}
	return 0;
}

