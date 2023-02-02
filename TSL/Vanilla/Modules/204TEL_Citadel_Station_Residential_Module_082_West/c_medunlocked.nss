int StartingConditional() {
	if (GetLocked(GetObjectByTag("med_supplies", 0))) {
		return 1;
	}
	else {
		return 0;
	}
}
