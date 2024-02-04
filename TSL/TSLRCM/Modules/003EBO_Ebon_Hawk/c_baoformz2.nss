int StartingConditional() {
	object oPC = GetFirstPC();
	return (((GetSpellAcquired(265, oPC) || GetSpellAcquired(266, oPC)) || GetSpellAcquired(267, oPC)) || GetSpellAcquired(268, oPC));
}