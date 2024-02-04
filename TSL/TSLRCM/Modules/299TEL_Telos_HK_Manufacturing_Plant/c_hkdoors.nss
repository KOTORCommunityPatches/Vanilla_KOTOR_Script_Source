int StartingConditional() {
	object oForceFieldMain2 = GetObjectByTag("ForceFieldMain2", 0);
	object oForceField50 = GetObjectByTag("ForceField50", 0);
	object oForceField51 = GetObjectByTag("ForceField51", 0);
	if (GetIsOpen(oForceField50)) {
		return 0;
	}
	else {
		return 1;
	}
}