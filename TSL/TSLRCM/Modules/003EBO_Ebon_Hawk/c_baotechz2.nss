int StartingConditional() {
	object oPC = GetFirstPC();
	return (((GetSpellAcquired(176, oPC) || GetSpellAcquired(182, oPC)) || GetSpellAcquired(183, oPC)) || GetSpellAcquired(270, oPC));
}