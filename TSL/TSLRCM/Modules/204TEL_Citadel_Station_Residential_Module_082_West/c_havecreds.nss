int StartingConditional() {
	if (GetIsObjectValid(GetObjectByTag("DroidTechCreds", 0))) {
		return 1;
	}
	else {
		return 0;
	}
}