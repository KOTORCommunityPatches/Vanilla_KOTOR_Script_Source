int StartingConditional() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetFeatAcquired(3, GetFirstPC()) && (!GetFeatAcquired(3, oBaoDur)))) {
		return 1;
	}
	if ((GetFeatAcquired(9, GetFirstPC()) && (!GetFeatAcquired(9, oBaoDur)))) {
		return 1;
	}
	if ((GetFeatAcquired(85, GetFirstPC()) && (!GetFeatAcquired(85, oBaoDur)))) {
		return 1;
	}
	return 0;
}