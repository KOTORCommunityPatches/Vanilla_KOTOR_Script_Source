int StartingConditional() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	if (GetFeatAcquired(3, oBaoDur)) {
		return 0;
	}
	else {
		return 1;
	}
}