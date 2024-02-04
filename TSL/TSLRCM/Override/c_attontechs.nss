int StartingConditional() {
	object oAtton = GetObjectByTag("atton", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetSpellAcquired(176, GetFirstPC()) && (!GetSpellAcquired(176, oAtton)))) {
		return 1;
	}
	if ((GetSpellAcquired(270, GetFirstPC()) && (!GetSpellAcquired(270, oAtton)))) {
		return 1;
	}
	if ((GetSpellAcquired(182, GetFirstPC()) && (!GetSpellAcquired(182, oAtton)))) {
		return 1;
	}
	if ((GetSpellAcquired(6, GetFirstPC()) && (!GetSpellAcquired(6, oAtton)))) {
		return 1;
	}
	if ((GetSpellAcquired(14, GetFirstPC()) && (!GetSpellAcquired(14, oAtton)))) {
		return 1;
	}
	return 0;
}