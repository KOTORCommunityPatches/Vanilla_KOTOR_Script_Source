int StartingConditional() {
	object oMira = GetObjectByTag("Mira", 0);
	if (GetFeatAcquired(36, oMira)) {
		return 0;
	}
	else {
		return 1;
	}
}