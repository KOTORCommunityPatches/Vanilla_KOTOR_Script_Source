int StartingConditional() {
	int int1 = 0;
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			if ((GetLastForfeitViolation() == 1)) {
				int1 = 1;
			}
			break;
		case 2:
			if ((GetLastForfeitViolation() == 2)) {
				int1 = 1;
			}
			break;
		case 4:
			if ((GetLastForfeitViolation() == 4)) {
				int1 = 1;
			}
			break;
		case 8:
			if ((GetLastForfeitViolation() == 8)) {
				int1 = 1;
			}
			break;
	}
	return int1;
}

