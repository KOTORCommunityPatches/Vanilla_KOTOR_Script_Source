int StartingConditional() {
	object oAtton = GetObjectByTag("atton", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetFeatAcquired(36, GetFirstPC()) && (!GetFeatAcquired(36, oAtton)))) {
		return 1;
	}
	if ((GetFeatAcquired(50, GetFirstPC()) && (!GetFeatAcquired(50, oAtton)))) {
		return 1;
	}
	return 0;
}

