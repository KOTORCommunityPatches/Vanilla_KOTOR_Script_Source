int StartingConditional() {
	object oT3M4 = GetObjectByTag("T3M4", 0);
	int int1 = (GetMaxHitPoints(oT3M4) - GetCurrentHitPoints(oT3M4));
	if ((int1 == 0)) {
		return 1;
	}
	return 0;
}

