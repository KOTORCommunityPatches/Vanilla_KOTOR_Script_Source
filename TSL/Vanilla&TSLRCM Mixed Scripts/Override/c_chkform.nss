int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	switch (nParam1) {
		case 4:
			int3 = 261;
			break;
		case 5:
			int3 = 262;
			break;
		case 6:
			int3 = 263;
			break;
		case 7:
			int3 = 264;
			break;
		case 12:
			int3 = 266;
			break;
		case 13:
			int3 = 267;
			break;
		case 14:
			int3 = 268;
			break;
	}
	return GetSpellAcquired(int3, GetFirstPC());
}

