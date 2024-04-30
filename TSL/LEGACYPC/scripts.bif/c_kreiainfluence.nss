int StartingConditional() {
	if ((GetGlobalNumber("000_Kreia_Influence") > 0)) {
		return 0;
	}
	else {
		if (IsAvailableCreature(4)) {
			return 1;
		}
		else {
			if (IsAvailableCreature(11)) {
				return 1;
			}
			else {
				return 0;
			}
		}
	}
}

