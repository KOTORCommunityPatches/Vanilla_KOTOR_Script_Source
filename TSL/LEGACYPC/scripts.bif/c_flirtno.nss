int StartingConditional() {
	if (((GetGender(GetPCSpeaker()) == GetGender(OBJECT_SELF)) || (GetAbilityScore(GetPCSpeaker(), 5) < 10))) {
		return 1;
	}
	return 0;
}

