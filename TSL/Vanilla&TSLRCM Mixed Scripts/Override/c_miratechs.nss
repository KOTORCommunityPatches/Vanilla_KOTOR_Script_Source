int StartingConditional() {
	object oMira = GetObjectByTag("Mira", 0);
	if ((!(GetModuleName() == "003EBO"))) {
		return 0;
	}
	if ((GetSpellAcquired(176, GetFirstPC()) && (!GetSpellAcquired(176, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(270, GetFirstPC()) && (!GetSpellAcquired(270, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(182, GetFirstPC()) && (!GetSpellAcquired(182, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(6, GetFirstPC()) && (!GetSpellAcquired(6, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(14, GetFirstPC()) && (!GetSpellAcquired(14, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(50, GetFirstPC()) && (!GetSpellAcquired(50, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(9, GetFirstPC()) && (!GetSpellAcquired(9, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(32, GetFirstPC()) && (!GetSpellAcquired(32, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(45, GetFirstPC()) && (!GetSpellAcquired(45, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(7, GetFirstPC()) && (!GetSpellAcquired(7, oMira)))) {
		return 1;
	}
	if ((GetSpellAcquired(38, GetFirstPC()) && (!GetSpellAcquired(38, oMira)))) {
		return 1;
	}
	return 0;
}

