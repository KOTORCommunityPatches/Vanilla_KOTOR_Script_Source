int StartingConditional() {
	int nLocalBool;
	object oFakeatton = GetObjectByTag("fakeatton", 0);
	nLocalBool = GetLocalBoolean(oFakeatton, 40);
	if (nLocalBool) {
		return 1;
	}
	else {
		return 0;
	}
}

