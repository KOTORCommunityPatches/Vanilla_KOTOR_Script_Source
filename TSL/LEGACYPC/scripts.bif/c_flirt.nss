int StartingConditional() {
	int int1 = GetGender(GetPCSpeaker());
	if ((GetAbilityScore(GetPCSpeaker(), 5) >= 10)) {
		if ((int1 != GetGender(OBJECT_SELF))) {
			return 1;
		}
		else {
			return 0;
		}
	}
	return 0;
}

