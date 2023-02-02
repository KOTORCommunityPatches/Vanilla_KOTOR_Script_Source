int StartingConditional() {
	int int1 = 0;
	object o203_Slusk = GetObjectByTag("203_Slusk", 0);
	if ((GetStandardFaction(o203_Slusk) == 2)) {
		int1 = 1;
	}
	return int1;
}
