int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_CAND_STATE") == 1) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")));
	return int1;
}

