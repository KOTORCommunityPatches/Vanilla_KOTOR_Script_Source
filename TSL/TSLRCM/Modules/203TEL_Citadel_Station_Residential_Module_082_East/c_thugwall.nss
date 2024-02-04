int StartingConditional() {
	int nLocalBool;
	object oWalltex = GetObjectByTag("walltex", 0);
	nLocalBool = GetLocalBoolean(oWalltex, 40);
	if (nLocalBool) {
		return 1;
	}
	else {
		return 0;
	}
}