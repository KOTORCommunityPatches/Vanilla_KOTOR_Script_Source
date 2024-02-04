int StartingConditional() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetSpellAcquired(176, GetFirstPC()) && (!GetSpellAcquired(176, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(270, GetFirstPC()) && (!GetSpellAcquired(270, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(182, GetFirstPC()) && (!GetSpellAcquired(182, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(6, GetFirstPC()) && (!GetSpellAcquired(6, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(14, GetFirstPC()) && (!GetSpellAcquired(14, oBaoDur)))) {
		return 1;
	}
	return 0;
}