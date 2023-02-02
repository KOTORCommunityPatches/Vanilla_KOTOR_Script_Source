int StartingConditional() {
	object oD_TSFArmory = GetObjectByTag("d_TSFArmory", 0);
	if ((!GetLocalBoolean(oD_TSFArmory, 40))) {
		return 1;
	}
	else {
		return 0;
	}
}
