int StartingConditional() {
	int nLocalBool = GetLocalBoolean(GetObjectByTag("sec_terminal51", 0), 37);
	int int3 = GetLocalBoolean(GetObjectByTag("sec_terminal51", 0), 39);
	(!nLocalBool);
	if ((nLocalBool && (!int3))) {
		return 1;
	}
	else {
		return 0;
	}
}

