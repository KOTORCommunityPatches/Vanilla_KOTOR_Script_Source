int StartingConditional() {
	int int1 = 1;
	int int2 = 0;
	object oNPC;
	while ((int2 < 3)) {
		oNPC = GetPartyMemberByIndex(int2);
		if (GetIsPlayerMadeCharacter(oNPC)) {
			int1 = 0;
		}
		(++int2);
	}
	return int1;
}

