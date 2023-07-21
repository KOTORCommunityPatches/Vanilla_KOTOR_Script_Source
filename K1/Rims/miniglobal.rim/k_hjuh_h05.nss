int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIH_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")));
	if (int1) {
		SetGlobalNumber("G_JUHANIH_STATE", 5);
		SetGlobalNumber("T_LEVH", (GetGlobalNumber("T_LEVH") + 1));
	}
	return int1;
}

