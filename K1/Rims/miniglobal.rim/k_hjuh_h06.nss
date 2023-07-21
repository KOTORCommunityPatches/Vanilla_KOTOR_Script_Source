int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIH_STATE") == 5) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")));
	return int1;
}

