int StartingConditional() {
	object oVisasmarr = GetObjectByTag("Visasmarr", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetSpellAcquired(270, GetFirstPC()) && (!GetSpellAcquired(270, oVisasmarr)))) {
		return 1;
	}
	if ((GetSpellAcquired(182, GetFirstPC()) && (!GetSpellAcquired(182, oVisasmarr)))) {
		return 1;
	}
	if ((GetSpellAcquired(6, GetFirstPC()) && (!GetSpellAcquired(6, oVisasmarr)))) {
		return 1;
	}
	if ((GetSpellAcquired(14, GetFirstPC()) && (!GetSpellAcquired(14, oVisasmarr)))) {
		return 1;
	}
	return 0;
}