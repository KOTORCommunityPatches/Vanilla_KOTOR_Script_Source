int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			return IsAvailableCreature(0);
		case 1:
			return IsAvailableCreature(1);
		case 2:
			return IsAvailableCreature(2);
		case 3:
			return IsAvailableCreature(3);
		case 4:
			return IsAvailableCreature(4);
		case 5:
			return IsAvailableCreature(5);
		case 6:
			return IsAvailableCreature(6);
		case 7:
			return IsAvailableCreature(7);
		case 8:
			return IsAvailableCreature(8);
		case 9:
			return IsAvailableCreature(9);
		case 10:
			return IsAvailableCreature(10);
		case 11:
			return IsAvailableCreature(11);
	}
	return 0;
}

