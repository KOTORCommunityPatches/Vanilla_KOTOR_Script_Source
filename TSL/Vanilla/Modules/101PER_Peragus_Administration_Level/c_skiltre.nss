int StartingConditional() {
	if (GetHasSkill(7, GetPCSpeaker())) {
		return 1;
	}
	return 0;
}
