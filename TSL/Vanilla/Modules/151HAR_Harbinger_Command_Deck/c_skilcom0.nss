int StartingConditional() {
	if (GetHasSkill(0, GetPCSpeaker())) {
		return 0;
	}
	return 1;
}
