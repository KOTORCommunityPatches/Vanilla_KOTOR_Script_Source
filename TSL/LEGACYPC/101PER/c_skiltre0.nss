int StartingConditional() {
	if (GetHasSkill(7, GetPCSpeaker())) {
		return 0;
	}
	return 1;
}

