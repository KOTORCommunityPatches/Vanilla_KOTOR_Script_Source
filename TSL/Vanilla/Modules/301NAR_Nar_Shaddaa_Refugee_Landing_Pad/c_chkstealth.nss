int StartingConditional() {
	int int1 = IsStealthed(GetFirstPC());
	if ((int1 == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}
