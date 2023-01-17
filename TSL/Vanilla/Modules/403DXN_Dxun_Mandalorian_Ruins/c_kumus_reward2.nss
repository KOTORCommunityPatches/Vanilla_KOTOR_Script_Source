int StartingConditional() {
	if ((!GetGlobalBoolean("402DXN_Kumus_Reward"))) {
		SetGlobalBoolean("402DXN_Kumus_Reward", 1);
		GiveGoldToCreature(GetFirstPC(), 1000);
		return 1;
	}
	return 0;
}

