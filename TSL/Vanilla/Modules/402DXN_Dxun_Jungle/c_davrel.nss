int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				int int3 = GetJournalEntry("zchallenge");
				if (((int3 != 0) && (int3 < 20))) {
				return 1;
				}
			}
			break;
	}
	return 0;
}
