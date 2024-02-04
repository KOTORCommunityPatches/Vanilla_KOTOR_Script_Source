int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	AurPostString(("Game Difficulty == " + IntToString(GetGameDifficulty())), 5, 5, 5.0);
	if ((nParam1 == GetGameDifficulty())) {
		return 1;
	}
	return 0;
}