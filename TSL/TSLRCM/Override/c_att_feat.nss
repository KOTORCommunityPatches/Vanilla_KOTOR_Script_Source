int StartingConditional() {
	object oAtton = GetObjectByTag("atton", 0);
	if (GetFeatAcquired(36, oAtton)) {
		return 0;
	}
	else {
		return 1;
	}
}