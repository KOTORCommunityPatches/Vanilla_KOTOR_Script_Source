int StartingConditional() {
	int int1 = ((((GetGlobalNumber("G_JUHANIH_STATE") == 2) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH"))) || ((GetGlobalNumber("G_JUHANIH_STATE") == 3) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")))) || ((GetGlobalBoolean("T_JUHANIKD") == 1) && (GetGlobalBoolean("T_JUHANIKF") == 0)));
	return int1;
}

