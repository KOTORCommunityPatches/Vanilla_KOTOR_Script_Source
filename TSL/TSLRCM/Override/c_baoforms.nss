int StartingConditional() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetSpellAcquired(261, GetFirstPC()) && (!GetSpellAcquired(261, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(262, GetFirstPC()) && (!GetSpellAcquired(262, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(263, GetFirstPC()) && (!GetSpellAcquired(263, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(264, GetFirstPC()) && (!GetSpellAcquired(264, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(266, GetFirstPC()) && (!GetSpellAcquired(266, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(267, GetFirstPC()) && (!GetSpellAcquired(267, oBaoDur)))) {
		return 1;
	}
	if ((GetSpellAcquired(268, GetFirstPC()) && (!GetSpellAcquired(268, oBaoDur)))) {
		return 1;
	}
	return 0;
}