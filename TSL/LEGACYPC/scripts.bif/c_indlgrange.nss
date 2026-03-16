int StartingConditional() {
	if ((GetDistanceToObject(GetPCSpeaker()) < 3.0)) {
		return 1;
	}
	else {
		return 0;
	}
}

