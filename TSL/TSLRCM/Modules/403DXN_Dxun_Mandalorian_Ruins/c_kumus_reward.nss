int StartingConditional() {
	if (GetGlobalBoolean("402DXN_Kumus_Reward")) {
		GiveGoldToCreature(GetFirstPC(), 1000);
		return 1;
	}
	return 0;
}