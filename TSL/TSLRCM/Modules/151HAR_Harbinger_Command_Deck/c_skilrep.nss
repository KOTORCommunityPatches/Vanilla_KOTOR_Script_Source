int StartingConditional() {
	if ((!GetHasSkill(5, GetPCSpeaker()))) {
		return 0;
	}
	return 1;
}