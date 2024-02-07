int StartingConditional() {
	object oPC = GetFirstPC();
	int int1 = (GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC));
	if ((int1 == 0)) {
		return 1;
	}
	return 0;
}

