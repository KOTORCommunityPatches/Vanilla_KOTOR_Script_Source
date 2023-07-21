void main() {
	int int1 = GetRunScriptVar();
	if ((int1 == 1)) {
		AdjustAlignment(GetFirstPC(), 2, 25);
	}
	else {
		if ((int1 == 2)) {
			AdjustAlignment(GetFirstPC(), 3, 25);
		}
	}
}

